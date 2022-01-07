
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {int n_chan; int maxdata; int * range_table; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_6__ {TYPE_2__* slot; } ;
struct TYPE_5__ {int mutex; TYPE_1__* usb; } ;
struct TYPE_4__ {int device; } ;


 TYPE_3__* devpriv ;
 int down (int *) ;
 int dt9812_10_ain_range ;
 int dt9812_10_aout_range ;
 int dt9812_2pt5_ain_range ;
 int dt9812_2pt5_aout_range ;
 int up (int *) ;

__attribute__((used)) static void dt9812_comedi_open(struct comedi_device *dev)
{
 down(&devpriv->slot->mutex);
 if (devpriv->slot->usb) {

  struct comedi_subdevice *s;

  s = &dev->subdevices[0];
  s->n_chan = 8;
  s->maxdata = 1;

  s = &dev->subdevices[1];
  s->n_chan = 8;
  s->maxdata = 1;

  s = &dev->subdevices[2];
  s->n_chan = 8;
  switch (devpriv->slot->usb->device) {
  case 0:{
    s->maxdata = 4095;
    s->range_table = &dt9812_10_ain_range;
   }
   break;
  case 1:{
    s->maxdata = 4095;
    s->range_table = &dt9812_2pt5_ain_range;
   }
   break;
  }

  s = &dev->subdevices[3];
  s->n_chan = 2;
  switch (devpriv->slot->usb->device) {
  case 0:{
    s->maxdata = 4095;
    s->range_table = &dt9812_10_aout_range;
   }
   break;
  case 1:{
    s->maxdata = 4095;
    s->range_table = &dt9812_2pt5_aout_range;
   }
   break;
  }
 }
 up(&devpriv->slot->mutex);
}
