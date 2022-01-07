
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {unsigned long iobase; unsigned int irq; int n_subdevices; scalar_t__ subdevices; int board_name; int minor; } ;
struct comedi_devconfig {unsigned long* options; } ;
struct TYPE_2__ {unsigned int io_range; int IRQbits; int numofports; scalar_t__ is_pet48; scalar_t__ can_have96; int name; } ;


 int EIO ;
 unsigned int PCL722_96_SIZE ;
 int SIZE_8255 ;
 int alloc_subdevices (struct comedi_device*,int) ;
 int interrupt_pcl724 ;
 int printk (char*,...) ;
 scalar_t__ request_irq (unsigned int,int ,int ,char*,struct comedi_device*) ;
 int request_region (unsigned long,unsigned int,char*) ;
 int subdev_8255_cb ;
 int subdev_8255_init (struct comedi_device*,scalar_t__,int ,unsigned long) ;
 int subdev_8255mapped_cb ;
 TYPE_1__* this_board ;

__attribute__((used)) static int pcl724_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 unsigned long iobase;
 unsigned int iorange;
 int ret, i, n_subdevices;




 iobase = it->options[0];
 iorange = this_board->io_range;
 if ((this_board->can_have96) && ((it->options[1] == 1)
      || (it->options[1] == 96)))
  iorange = PCL722_96_SIZE;
 printk("comedi%d: pcl724: board=%s, 0x%03lx ", dev->minor,
        this_board->name, iobase);
 if (!request_region(iobase, iorange, "pcl724")) {
  printk("I/O port conflict\n");
  return -EIO;
 }

 dev->iobase = iobase;

 dev->board_name = this_board->name;
 printk("\n");

 n_subdevices = this_board->numofports;
 if ((this_board->can_have96) && ((it->options[1] == 1)
      || (it->options[1] == 96)))
  n_subdevices = 4;

 ret = alloc_subdevices(dev, n_subdevices);
 if (ret < 0)
  return ret;

 for (i = 0; i < dev->n_subdevices; i++) {
  if (this_board->is_pet48) {
   subdev_8255_init(dev, dev->subdevices + i,
      subdev_8255mapped_cb,
      (unsigned long)(dev->iobase +
        i * 0x1000));
  } else
   subdev_8255_init(dev, dev->subdevices + i,
      subdev_8255_cb,
      (unsigned long)(dev->iobase +
        SIZE_8255 * i));
 };

 return 0;
}
