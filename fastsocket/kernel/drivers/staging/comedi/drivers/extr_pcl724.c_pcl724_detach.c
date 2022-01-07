
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int n_subdevices; int iobase; scalar_t__ irq; scalar_t__ subdevices; } ;
struct TYPE_2__ {int io_range; } ;


 int free_irq (scalar_t__,struct comedi_device*) ;
 int release_region (int ,int ) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int pcl724_detach(struct comedi_device *dev)
{
 int i;



 for (i = 0; i < dev->n_subdevices; i++) {
  subdev_8255_cleanup(dev, dev->subdevices + i);
 }







 release_region(dev->iobase, this_board->io_range);

 return 0;
}
