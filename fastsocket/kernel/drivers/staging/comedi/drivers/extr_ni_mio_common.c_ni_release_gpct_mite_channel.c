
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mite_channel {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_6__ {int mite_channel_lock; TYPE_1__* counter_dev; } ;
struct TYPE_5__ {struct mite_channel* mite_chan; } ;
struct TYPE_4__ {TYPE_2__* counters; } ;


 int BUG_ON (int) ;
 unsigned int NUM_GPCT ;
 TYPE_3__* devpriv ;
 int mite_release_channel (struct mite_channel*) ;
 int ni_set_gpct_dma_channel (struct comedi_device*,unsigned int,int) ;
 int ni_tio_set_mite_channel (TYPE_2__*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ni_release_gpct_mite_channel(struct comedi_device *dev,
      unsigned gpct_index)
{
}
