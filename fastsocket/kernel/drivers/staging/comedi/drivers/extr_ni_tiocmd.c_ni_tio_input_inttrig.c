
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {int lock; scalar_t__ mite_chan; } ;
struct comedi_subdevice {TYPE_1__* async; struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int * inttrig; } ;


 int BUG_ON (int ) ;
 int EINVAL ;
 int EIO ;
 int NI_GPCT_ARM_IMMEDIATE ;
 int mite_dma_arm (scalar_t__) ;
 int ni_tio_arm (struct ni_gpct*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ni_tio_input_inttrig(struct comedi_device *dev,
    struct comedi_subdevice *s,
    unsigned int trignum)
{
 unsigned long flags;
 int retval = 0;
 struct ni_gpct *counter = s->private;

 BUG_ON(counter == ((void*)0));
 if (trignum != 0)
  return -EINVAL;

 spin_lock_irqsave(&counter->lock, flags);
 if (counter->mite_chan)
  mite_dma_arm(counter->mite_chan);
 else
  retval = -EIO;
 spin_unlock_irqrestore(&counter->lock, flags);
 if (retval < 0)
  return retval;
 retval = ni_tio_arm(counter, 1, NI_GPCT_ARM_IMMEDIATE);
 s->async->inttrig = ((void*)0);

 return retval;
}
