
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int op_axp_cpu_start (int *) ;
 int smp_call_function (int (*) (int *),int *,int) ;

__attribute__((used)) static int
op_axp_start(void)
{
 (void)smp_call_function(op_axp_cpu_start, ((void*)0), 1);
 op_axp_cpu_start(((void*)0));
 return 0;
}
