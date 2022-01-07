
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_local_APIC () ;
 int halt () ;
 scalar_t__ hlt_works (int ) ;
 int local_irq_disable () ;
 int set_cpu_online (int ,int) ;
 int smp_processor_id () ;

void stop_this_cpu(void *dummy)
{
 local_irq_disable();



 set_cpu_online(smp_processor_id(), 0);
 disable_local_APIC();

 for (;;) {
  if (hlt_works(smp_processor_id()))
   halt();
 }
}
