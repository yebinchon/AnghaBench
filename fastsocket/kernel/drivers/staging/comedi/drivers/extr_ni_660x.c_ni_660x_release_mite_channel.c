
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {struct mite_channel* mite_chan; } ;
struct mite_channel {int channel; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int mite_channel_lock; } ;


 int mite_release_channel (struct mite_channel*) ;
 int ni_660x_unset_dma_channel (struct comedi_device*,int ,struct ni_gpct*) ;
 int ni_tio_set_mite_channel (struct ni_gpct*,int *) ;
 TYPE_1__* private (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ni_660x_release_mite_channel(struct comedi_device *dev,
      struct ni_gpct *counter)
{
 unsigned long flags;

 spin_lock_irqsave(&private(dev)->mite_channel_lock, flags);
 if (counter->mite_chan) {
  struct mite_channel *mite_chan = counter->mite_chan;

  ni_660x_unset_dma_channel(dev, mite_chan->channel, counter);
  ni_tio_set_mite_channel(counter, ((void*)0));
  mite_release_channel(mite_chan);
 }
 spin_unlock_irqrestore(&private(dev)->mite_channel_lock, flags);
}
