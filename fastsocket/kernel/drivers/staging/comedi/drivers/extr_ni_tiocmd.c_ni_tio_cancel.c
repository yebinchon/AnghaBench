
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; int lock; scalar_t__ mite_chan; } ;


 int Gi_Gate_Interrupt_Enable_Bit (int ) ;
 int NITIO_Gi_Interrupt_Enable_Reg (int ) ;
 int mite_dma_disarm (scalar_t__) ;
 int ni_tio_arm (struct ni_gpct*,int ,int ) ;
 int ni_tio_configure_dma (struct ni_gpct*,int ,int ) ;
 int ni_tio_set_bits (struct ni_gpct*,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ni_tio_cancel(struct ni_gpct *counter)
{
 unsigned long flags;

 ni_tio_arm(counter, 0, 0);
 spin_lock_irqsave(&counter->lock, flags);
 if (counter->mite_chan) {
  mite_dma_disarm(counter->mite_chan);
 }
 spin_unlock_irqrestore(&counter->lock, flags);
 ni_tio_configure_dma(counter, 0, 0);

 ni_tio_set_bits(counter,
   NITIO_Gi_Interrupt_Enable_Reg(counter->counter_index),
   Gi_Gate_Interrupt_Enable_Bit(counter->counter_index),
   0x0);
 return 0;
}
