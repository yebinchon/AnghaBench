
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* di_mite_chan; } ;
struct TYPE_4__ {int dir; } ;


 int COMEDI_INPUT ;
 TYPE_3__* devpriv ;
 int mite_dma_arm (TYPE_1__*) ;
 int mite_prep_dma (TYPE_1__*,int,int) ;
 int ni_pcidio_request_di_mite_channel (struct comedi_device*) ;

__attribute__((used)) static int setup_mite_dma(struct comedi_device *dev, struct comedi_subdevice *s)
{
 int retval;

 retval = ni_pcidio_request_di_mite_channel(dev);
 if (retval)
  return retval;

 devpriv->di_mite_chan->dir = COMEDI_INPUT;

 mite_prep_dma(devpriv->di_mite_chan, 32, 32);

 mite_dma_arm(devpriv->di_mite_chan);
 return 0;
}
