
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int isr_soft_isr; int req_soft_isr; int a; int (* tst_irq ) (int *) ;int (* clr_irq ) (int *) ;int (* disIrq ) (TYPE_2__*) ;} ;
struct TYPE_5__ {TYPE_2__ xdi_adapter; } ;
typedef TYPE_1__ diva_os_xdi_adapter_t ;
typedef TYPE_2__* PISDN_ADAPTER ;


 int diva_os_cancel_soft_isr (int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (int *) ;
 int stub3 (int *) ;
 int stub4 (int *) ;

__attribute__((used)) static void diva_bri_clear_interrupts(diva_os_xdi_adapter_t * a)
{
 PISDN_ADAPTER IoAdapter = &a->xdi_adapter;




 IoAdapter->disIrq(IoAdapter);

 IoAdapter->tst_irq(&IoAdapter->a);
 IoAdapter->clr_irq(&IoAdapter->a);
 IoAdapter->tst_irq(&IoAdapter->a);




 diva_os_cancel_soft_isr(&IoAdapter->req_soft_isr);
 diva_os_cancel_soft_isr(&IoAdapter->isr_soft_isr);
}
