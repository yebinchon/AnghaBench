
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int type; } ;
struct comedi_device {int dummy; } ;


 int COMEDI_SUBD_UNUSED ;
 int printk (char*) ;

__attribute__((used)) static inline int subdev_8255_init(struct comedi_device *dev,
       struct comedi_subdevice *s, void *x,
       unsigned long y)
{
 printk("8255 support not configured -- disabling subdevice\n");

 s->type = COMEDI_SUBD_UNUSED;

 return 0;
}
