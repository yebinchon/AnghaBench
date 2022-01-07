
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_5__ {int mite_channel_lock; TYPE_1__* ao_mite_chan; int ao_mite_ring; int mite; } ;
struct TYPE_4__ {int channel; int dir; } ;


 int BUG_ON (TYPE_1__*) ;
 int COMEDI_OUTPUT ;
 int EBUSY ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 TYPE_1__* mite_request_channel (int ,int ) ;
 int ni_set_ao_dma_channel (struct comedi_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ni_request_ao_mite_channel(struct comedi_device *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 BUG_ON(devpriv->ao_mite_chan);
 devpriv->ao_mite_chan =
     mite_request_channel(devpriv->mite, devpriv->ao_mite_ring);
 if (devpriv->ao_mite_chan == ((void*)0)) {
  spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
  comedi_error(dev,
        "failed to reserve mite dma channel for analog outut.");
  return -EBUSY;
 }
 devpriv->ao_mite_chan->dir = COMEDI_OUTPUT;
 ni_set_ao_dma_channel(dev, devpriv->ao_mite_chan->channel);
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
 return 0;
}
