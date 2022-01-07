
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ni_gpct {int mite_chan; } ;
struct mite_channel {int dir; int channel; } ;
struct comedi_device {int dummy; } ;
typedef enum comedi_io_direction { ____Placeholder_comedi_io_direction } comedi_io_direction ;
struct TYPE_3__ {int mite_channel_lock; int mite; } ;


 int BUG_ON (int ) ;
 int EBUSY ;
 int comedi_error (struct comedi_device*,char*) ;
 struct mite_channel* mite_request_channel (int ,int ) ;
 int mite_ring (TYPE_1__*,struct ni_gpct*) ;
 int ni_660x_set_dma_channel (struct comedi_device*,int ,struct ni_gpct*) ;
 int ni_tio_set_mite_channel (struct ni_gpct*,struct mite_channel*) ;
 TYPE_1__* private (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ni_660x_request_mite_channel(struct comedi_device *dev,
     struct ni_gpct *counter,
     enum comedi_io_direction direction)
{
 unsigned long flags;
 struct mite_channel *mite_chan;

 spin_lock_irqsave(&private(dev)->mite_channel_lock, flags);
 BUG_ON(counter->mite_chan);
 mite_chan =
     mite_request_channel(private(dev)->mite, mite_ring(private(dev),
              counter));
 if (mite_chan == ((void*)0)) {
  spin_unlock_irqrestore(&private(dev)->mite_channel_lock, flags);
  comedi_error(dev,
        "failed to reserve mite dma channel for counter.");
  return -EBUSY;
 }
 mite_chan->dir = direction;
 ni_tio_set_mite_channel(counter, mite_chan);
 ni_660x_set_dma_channel(dev, mite_chan->channel, counter);
 spin_unlock_irqrestore(&private(dev)->mite_channel_lock, flags);
 return 0;
}
