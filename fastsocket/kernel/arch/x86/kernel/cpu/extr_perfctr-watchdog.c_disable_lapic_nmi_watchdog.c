
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* unreserve ) () ;} ;


 int BUG_ON (int) ;
 scalar_t__ NMI_LOCAL_APIC ;
 scalar_t__ atomic_read (int *) ;
 int nmi_active ;
 scalar_t__ nmi_watchdog ;
 int on_each_cpu (int ,int *,int) ;
 int stop_apic_nmi_watchdog ;
 int stub1 () ;
 TYPE_1__* wd_ops ;

void disable_lapic_nmi_watchdog(void)
{
 BUG_ON(nmi_watchdog != NMI_LOCAL_APIC);

 if (atomic_read(&nmi_active) <= 0)
  return;

 on_each_cpu(stop_apic_nmi_watchdog, ((void*)0), 1);

 if (wd_ops)
  wd_ops->unreserve();

 BUG_ON(atomic_read(&nmi_active) != 0);
}
