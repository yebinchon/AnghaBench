
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long __native_read_tsc () ;

unsigned long long native_read_tsc(void)
{
 return __native_read_tsc();
}
