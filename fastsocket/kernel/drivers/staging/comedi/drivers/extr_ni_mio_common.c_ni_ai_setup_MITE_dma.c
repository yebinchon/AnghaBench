
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_6__ {int reg_type; } ;
struct TYPE_5__ {int prealloc_bufsz; } ;
struct TYPE_4__ {int mite_channel_lock; int * ai_mite_chan; } ;


 int EIO ;
 int NI_AI_SUBDEV ;
 TYPE_3__ boardtype ;
 int comedi_buf_write_alloc (TYPE_2__*,int ) ;
 TYPE_1__* devpriv ;
 int mite_dma_arm (int *) ;
 int mite_prep_dma (int *,int,int) ;



 int ni_request_ai_mite_channel (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ni_ai_setup_MITE_dma(struct comedi_device *dev)
{
 struct comedi_subdevice *s = dev->subdevices + NI_AI_SUBDEV;
 int retval;
 unsigned long flags;

 retval = ni_request_ai_mite_channel(dev);
 if (retval)
  return retval;



 comedi_buf_write_alloc(s->async, s->async->prealloc_bufsz);

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 if (devpriv->ai_mite_chan == ((void*)0)) {
  spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
  return -EIO;
 }

 switch (boardtype.reg_type) {
 case 130:
 case 129:
  mite_prep_dma(devpriv->ai_mite_chan, 32, 16);
  break;
 case 128:
  mite_prep_dma(devpriv->ai_mite_chan, 32, 32);
  break;
 default:
  mite_prep_dma(devpriv->ai_mite_chan, 16, 16);
  break;
 };

 mite_dma_arm(devpriv->ai_mite_chan);
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);

 return 0;
}
