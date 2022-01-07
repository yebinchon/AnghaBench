
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clockevents_notify (unsigned long,int *) ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static void xen_vcpu_notify_restore(void *data)
{
 unsigned long reason = (unsigned long)data;


 if ( smp_processor_id() == 0)
  return;

 clockevents_notify(reason, ((void*)0));
}
