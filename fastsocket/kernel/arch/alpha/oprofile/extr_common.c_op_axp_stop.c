
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int op_axp_cpu_stop (int *) ;
 int smp_call_function (int (*) (int *),int *,int) ;

__attribute__((used)) static void
op_axp_stop(void)
{
 (void)smp_call_function(op_axp_cpu_stop, ((void*)0), 1);
 op_axp_cpu_stop(((void*)0));
}
