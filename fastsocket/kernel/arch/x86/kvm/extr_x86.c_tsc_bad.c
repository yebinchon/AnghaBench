
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __get_cpu_var ;



__attribute__((used)) static void tsc_bad(void *info)
{
 __get_cpu_var(cpu_tsc_khz) = 0;
}
