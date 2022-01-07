
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mach_check_checksum () ;

int __nvram_check_checksum(void)
{
 return mach_check_checksum();
}
