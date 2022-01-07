
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ohci {int iso_tasklet_list_lock; int ir_multichannel_used; int ir_ctx_usage; int it_ctx_usage; } ;
struct ohci1394_iso_tasklet {scalar_t__ type; int link; int context; int tasklet; } ;


 scalar_t__ OHCI_ISO_MULTICHANNEL_RECEIVE ;
 scalar_t__ OHCI_ISO_TRANSMIT ;
 int clear_bit (int ,int *) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_kill (int *) ;

void ohci1394_unregister_iso_tasklet(struct ti_ohci *ohci,
         struct ohci1394_iso_tasklet *tasklet)
{
 unsigned long flags;

 tasklet_kill(&tasklet->tasklet);

 spin_lock_irqsave(&ohci->iso_tasklet_list_lock, flags);

 if (tasklet->type == OHCI_ISO_TRANSMIT)
  clear_bit(tasklet->context, &ohci->it_ctx_usage);
 else {
  clear_bit(tasklet->context, &ohci->ir_ctx_usage);

  if (tasklet->type == OHCI_ISO_MULTICHANNEL_RECEIVE) {
   clear_bit(0, &ohci->ir_multichannel_used);
  }
 }

 list_del(&tasklet->link);

 spin_unlock_irqrestore(&ohci->iso_tasklet_list_lock, flags);
}
