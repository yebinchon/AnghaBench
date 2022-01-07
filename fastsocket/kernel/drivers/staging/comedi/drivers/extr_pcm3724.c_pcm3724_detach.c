
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int n_subdevices; scalar_t__ iobase; scalar_t__ subdevices; } ;
struct TYPE_2__ {int io_range; } ;


 int release_region (scalar_t__,int ) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int pcm3724_detach(struct comedi_device *dev)
{
 int i;

 if (dev->subdevices) {
  for (i = 0; i < dev->n_subdevices; i++) {
   subdev_8255_cleanup(dev, dev->subdevices + i);
  }
 }
 if (dev->iobase) {
  release_region(dev->iobase, this_board->io_range);
 }

 return 0;
}
