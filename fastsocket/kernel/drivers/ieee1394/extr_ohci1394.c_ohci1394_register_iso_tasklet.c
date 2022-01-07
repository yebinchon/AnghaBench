
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ohci {int nb_iso_xmit_ctx; unsigned long it_ctx_usage; int nb_iso_rcv_ctx; unsigned long ir_ctx_usage; unsigned long ir_multichannel_used; int iso_tasklet_list_lock; int iso_tasklet_list; } ;
struct ohci1394_iso_tasklet {scalar_t__ type; int context; int link; } ;


 int EBUSY ;
 scalar_t__ OHCI_ISO_MULTICHANNEL_RECEIVE ;
 scalar_t__ OHCI_ISO_TRANSMIT ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int,unsigned long*) ;

int ohci1394_register_iso_tasklet(struct ti_ohci *ohci,
      struct ohci1394_iso_tasklet *tasklet)
{
 unsigned long flags, *usage;
 int n, i, r = -EBUSY;

 if (tasklet->type == OHCI_ISO_TRANSMIT) {
  n = ohci->nb_iso_xmit_ctx;
  usage = &ohci->it_ctx_usage;
 }
 else {
  n = ohci->nb_iso_rcv_ctx;
  usage = &ohci->ir_ctx_usage;


  if (tasklet->type == OHCI_ISO_MULTICHANNEL_RECEIVE) {
   if (test_and_set_bit(0, &ohci->ir_multichannel_used)) {
    return r;
   }
  }
 }

 spin_lock_irqsave(&ohci->iso_tasklet_list_lock, flags);

 for (i = 0; i < n; i++)
  if (!test_and_set_bit(i, usage)) {
   tasklet->context = i;
   list_add_tail(&tasklet->link, &ohci->iso_tasklet_list);
   r = 0;
   break;
  }

 spin_unlock_irqrestore(&ohci->iso_tasklet_list_lock, flags);

 return r;
}
