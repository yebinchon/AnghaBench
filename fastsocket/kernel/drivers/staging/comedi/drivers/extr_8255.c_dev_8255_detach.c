
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ type; } ;
struct comedi_device {int n_subdevices; struct comedi_subdevice* subdevices; int minor; } ;


 unsigned long CALLBACK_ARG ;
 scalar_t__ COMEDI_SUBD_UNUSED ;
 int _8255_SIZE ;
 int printk (char*,int ) ;
 int release_region (unsigned long,int ) ;
 int subdev_8255_cleanup (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static int dev_8255_detach(struct comedi_device *dev)
{
 int i;
 unsigned long iobase;
 struct comedi_subdevice *s;

 printk("comedi%d: 8255: remove\n", dev->minor);

 for (i = 0; i < dev->n_subdevices; i++) {
  s = dev->subdevices + i;
  if (s->type != COMEDI_SUBD_UNUSED) {
   iobase = CALLBACK_ARG;
   release_region(iobase, _8255_SIZE);
  }
  subdev_8255_cleanup(dev, s);
 }

 return 0;
}
