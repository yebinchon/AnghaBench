
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __get_cpu_var ;



void cpu_nmi_set_wd_enabled(void)
{
 __get_cpu_var(wd_enabled) = 1;
}
