
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_4__ {int mite_channel_lock; TYPE_1__* mite; int * di_mite_chan; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;


 scalar_t__ DMA_Line_Control_Group1 ;
 TYPE_2__* devpriv ;
 int mite_dma_disarm (int *) ;
 int mite_dma_reset (int *) ;
 int mite_release_channel (int *) ;
 int mmiowb () ;
 int primary_DMAChannel_bits (int ) ;
 int secondary_DMAChannel_bits (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void ni_pcidio_release_di_mite_channel(struct comedi_device *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 if (devpriv->di_mite_chan) {
  mite_dma_disarm(devpriv->di_mite_chan);
  mite_dma_reset(devpriv->di_mite_chan);
  mite_release_channel(devpriv->di_mite_chan);
  devpriv->di_mite_chan = ((void*)0);
  writeb(primary_DMAChannel_bits(0) |
         secondary_DMAChannel_bits(0),
         devpriv->mite->daq_io_addr + DMA_Line_Control_Group1);
  mmiowb();
 }
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
}
