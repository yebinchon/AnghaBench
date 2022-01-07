
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_7__ {int mite_channel_lock; TYPE_2__* mite; TYPE_1__* di_mite_chan; int di_mite_ring; } ;
struct TYPE_6__ {scalar_t__ daq_io_addr; } ;
struct TYPE_5__ {int channel; } ;


 int BUG_ON (TYPE_1__*) ;
 scalar_t__ DMA_Line_Control_Group1 ;
 int EBUSY ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_3__* devpriv ;
 TYPE_1__* mite_request_channel_in_range (TYPE_2__*,int ,int,int) ;
 int mmiowb () ;
 int primary_DMAChannel_bits (int ) ;
 int secondary_DMAChannel_bits (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int ni_pcidio_request_di_mite_channel(struct comedi_device *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 BUG_ON(devpriv->di_mite_chan);
 devpriv->di_mite_chan =
     mite_request_channel_in_range(devpriv->mite,
       devpriv->di_mite_ring, 1, 2);
 if (devpriv->di_mite_chan == ((void*)0)) {
  spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
  comedi_error(dev, "failed to reserve mite dma channel.");
  return -EBUSY;
 }
 writeb(primary_DMAChannel_bits(devpriv->di_mite_chan->channel) |
        secondary_DMAChannel_bits(devpriv->di_mite_chan->channel),
        devpriv->mite->daq_io_addr + DMA_Line_Control_Group1);
 mmiowb();
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
 return 0;
}
