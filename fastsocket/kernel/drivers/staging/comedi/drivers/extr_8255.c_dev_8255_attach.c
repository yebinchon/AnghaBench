
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {char* board_name; int n_subdevices; TYPE_1__* subdevices; int minor; } ;
struct comedi_devconfig {unsigned long* options; } ;
struct TYPE_2__ {int type; } ;


 int COMEDI_NDEVCONFOPTS ;
 int COMEDI_SUBD_UNUSED ;
 int EINVAL ;
 int _8255_SIZE ;
 int alloc_subdevices (struct comedi_device*,int) ;
 int printk (char*,...) ;
 int request_region (unsigned long,int ,char*) ;
 int subdev_8255_init (struct comedi_device*,TYPE_1__*,int *,unsigned long) ;

__attribute__((used)) static int dev_8255_attach(struct comedi_device *dev,
      struct comedi_devconfig *it)
{
 int ret;
 unsigned long iobase;
 int i;

 printk("comedi%d: 8255:", dev->minor);

 dev->board_name = "8255";

 for (i = 0; i < COMEDI_NDEVCONFOPTS; i++) {
  iobase = it->options[i];
  if (!iobase)
   break;
 }
 if (i == 0) {
  printk(" no devices specified\n");
  return -EINVAL;
 }

 ret = alloc_subdevices(dev, i);
 if (ret < 0)
  return ret;

 for (i = 0; i < dev->n_subdevices; i++) {
  iobase = it->options[i];

  printk(" 0x%04lx", iobase);
  if (!request_region(iobase, _8255_SIZE, "8255")) {
   printk(" (I/O port conflict)");

   dev->subdevices[i].type = COMEDI_SUBD_UNUSED;
  } else {
   subdev_8255_init(dev, dev->subdevices + i, ((void*)0),
      iobase);
  }
 }

 printk("\n");

 return 0;
}
