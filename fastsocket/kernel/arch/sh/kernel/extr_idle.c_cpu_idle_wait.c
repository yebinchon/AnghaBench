
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_nothing ;
 int smp_call_function (int ,int *,int) ;
 int smp_mb () ;

void cpu_idle_wait(void)
{
 smp_mb();

 smp_call_function(do_nothing, ((void*)0), 1);
}
