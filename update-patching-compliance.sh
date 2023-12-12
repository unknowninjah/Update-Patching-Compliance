#!/bin/bash
yum clean all
if yum list updates | grep -E '^(kernel|libgcc|glibc)' >/dev/null 2>&1 && echo Found glibc/libgcc/kernel updates, you MUST reboot after update = Found glibc/libgcc/kernel updates, you must reboot after update
then
        yum update -y --skip-broken
        init 6
else
        yum update -y --skip-broken
fi
