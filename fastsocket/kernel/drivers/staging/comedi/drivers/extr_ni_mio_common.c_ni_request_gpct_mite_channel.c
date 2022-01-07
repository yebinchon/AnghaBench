
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mite_channel {int dir; int channel; } ;
struct comedi_device {int dummy; } ;
typedef enum comedi_io_direction { ____Placeholder_comedi_io_direction } comedi_io_direction ;
struct TYPE_6__ {int mite_channel_lock; TYPE_1__* counter_dev; int * gpct_mite_ring; int mite; } ;
struct TYPE_5__ {int mite_chan; } ;
struct TYPE_4__ {TYPE_2__* counters; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 unsigned int NUM_GPCT ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_3__* devpriv ;
 struct mite_channel* mite_request_channel (int ,int ) ;
 int ni_set_gpct_dma_channel (struct comedi_device*,unsigned int,int ) ;
 int ni_tio_set_mite_channel (TYPE_2__*,struct mite_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ni_request_gpct_mite_channel(struct comedi_device *dev,
     unsigned gpct_index,
     enum comedi_io_direction direction)
{
 unsigned long flags;
 struct mite_channel *mite_chan;

 BUG_ON(gpct_index >= NUM_GPCT);
 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 BUG_ON(devpriv->counter_dev->counters[gpct_index].mite_chan);
 mite_chan =
     mite_request_channel(devpriv->mite,
     devpriv->gpct_mite_ring[gpct_index]);
 if (mite_chan == ((void*)0)) {
  spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
  comedi_error(dev,
        "failed to reserve mite dma channel for counter.");
  return -EBUSY;
 }
 mite_chan->dir = direction;
 ni_tio_set_mite_channel(&devpriv->counter_dev->counters[gpct_index],
    mite_chan);
 ni_set_gpct_dma_channel(dev, gpct_index, mite_chan->channel);
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
 return 0;
}
