
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* send_IPI_allbutself ) (int ) ;} ;


 int REBOOT_VECTOR ;
 unsigned long USEC_PER_SEC ;
 TYPE_1__* apic ;
 int disable_local_APIC () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int num_online_cpus () ;
 scalar_t__ reboot_force ;
 int stub1 (int ) ;
 int udelay (int) ;

__attribute__((used)) static void native_stop_other_cpus(int wait)
{
 unsigned long flags;
 unsigned long timeout;

 if (reboot_force)
  return;
 if (num_online_cpus() > 1) {
  apic->send_IPI_allbutself(REBOOT_VECTOR);





  timeout = USEC_PER_SEC;
  while (num_online_cpus() > 1 && (wait || timeout--))
   udelay(1);
 }

 local_irq_save(flags);
 disable_local_APIC();
 local_irq_restore(flags);
}
