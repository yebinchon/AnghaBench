
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ private; } ;
struct comedi_device {int dummy; } ;


 int kfree (scalar_t__) ;

void subdev_8255_cleanup(struct comedi_device *dev, struct comedi_subdevice *s)
{
 if (s->private) {





  kfree(s->private);
 }
}
