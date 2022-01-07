
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int irqreturn_t ;
typedef int (* diva_xdi_clear_interrupts_proc_t ) (TYPE_1__*) ;
struct TYPE_6__ {int (* diva_isr_handler ) (TYPE_3__*) ;} ;
struct TYPE_5__ {TYPE_3__ xdi_adapter; int (* clear_interrupts_proc ) (TYPE_1__*) ;} ;
typedef TYPE_1__ diva_os_xdi_adapter_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_3__*) ;

irqreturn_t diva_os_irq_wrapper(int irq, void *context)
{
 diva_os_xdi_adapter_t *a = context;
 diva_xdi_clear_interrupts_proc_t clear_int_proc;

 if (!a || !a->xdi_adapter.diva_isr_handler)
  return IRQ_NONE;

 if ((clear_int_proc = a->clear_interrupts_proc)) {
  (*clear_int_proc) (a);
  a->clear_interrupts_proc = ((void*)0);
  return IRQ_HANDLED;
 }

 (*(a->xdi_adapter.diva_isr_handler)) (&a->xdi_adapter);
 return IRQ_HANDLED;
}
