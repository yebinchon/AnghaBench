
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback_register {int address; int type; } ;


 int BUG_ON (int ) ;
 int CALLBACKOP_register ;
 int CALLBACKTYPE_event ;
 int HYPERVISOR_callback_op (int ,struct callback_register*) ;
 int register_cpu_notifier (int *) ;
 unsigned int smp_processor_id () ;
 int unbind_evtchn_notifier ;

void xen_smp_intr_init(void)
{
}
