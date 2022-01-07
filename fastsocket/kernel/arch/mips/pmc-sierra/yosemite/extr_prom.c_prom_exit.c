
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prom_cpu0_exit (int *) ;
 int smp_call_function (int (*) (int *),int *,int) ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static void prom_exit(void)
{





 prom_cpu0_exit(((void*)0));
}
