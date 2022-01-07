
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kgdb_call_nmi_hook ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int smp_call_function (int ,int *,int ) ;

void kgdb_roundup_cpus(unsigned long flags)
{
 local_irq_enable();
 smp_call_function(kgdb_call_nmi_hook, ((void*)0), 0);
 local_irq_disable();
}
