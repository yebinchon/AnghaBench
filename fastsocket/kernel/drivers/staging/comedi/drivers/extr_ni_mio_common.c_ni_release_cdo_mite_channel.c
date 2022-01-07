
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int mite_channel_lock; int * cdo_mite_chan; } ;


 TYPE_1__* devpriv ;
 int mite_release_channel (int *) ;
 int ni_set_cdo_dma_channel (struct comedi_device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ni_release_cdo_mite_channel(struct comedi_device *dev)
{
}
