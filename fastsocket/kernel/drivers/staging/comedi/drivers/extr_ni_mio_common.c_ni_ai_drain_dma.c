
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int (* stc_readw ) (struct comedi_device*,int ) ;int mite_channel_lock; scalar_t__ ai_mite_chan; } ;


 int AI_FIFO_Empty_St ;
 int AI_Status_1_Register ;
 TYPE_1__* devpriv ;
 scalar_t__ mite_bytes_in_transit (scalar_t__) ;
 int ni_sync_ai_dma (struct comedi_device*) ;
 int printk (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct comedi_device*,int ) ;
 int stub2 (struct comedi_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ni_ai_drain_dma(struct comedi_device *dev)
{
 int i;
 static const int timeout = 10000;
 unsigned long flags;
 int retval = 0;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 if (devpriv->ai_mite_chan) {
  for (i = 0; i < timeout; i++) {
   if ((devpriv->stc_readw(dev,
      AI_Status_1_Register) &
        AI_FIFO_Empty_St)
       && mite_bytes_in_transit(devpriv->ai_mite_chan) ==
       0)
    break;
   udelay(5);
  }
  if (i == timeout) {
   printk("ni_mio_common: wait for dma drain timed out\n");
   printk
       ("mite_bytes_in_transit=%i, AI_Status1_Register=0x%x\n",
        mite_bytes_in_transit(devpriv->ai_mite_chan),
        devpriv->stc_readw(dev, AI_Status_1_Register));
   retval = -1;
  }
 }
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);

 ni_sync_ai_dma(dev);

 return retval;
}
