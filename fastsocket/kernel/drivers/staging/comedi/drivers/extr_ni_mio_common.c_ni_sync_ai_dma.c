
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {int mite_channel_lock; scalar_t__ ai_mite_chan; } ;


 int NI_AI_SUBDEV ;
 TYPE_1__* devpriv ;
 int mite_sync_input_dma (scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ni_sync_ai_dma(struct comedi_device *dev)
{
 struct comedi_subdevice *s = dev->subdevices + NI_AI_SUBDEV;
 unsigned long flags;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 if (devpriv->ai_mite_chan)
  mite_sync_input_dma(devpriv->ai_mite_chan, s->async);
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
}
