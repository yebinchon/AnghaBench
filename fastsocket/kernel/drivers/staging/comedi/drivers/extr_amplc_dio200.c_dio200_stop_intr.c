
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_intr {int iobase; scalar_t__ has_int_sce; scalar_t__ enabled_isns; scalar_t__ active; } ;
struct comedi_subdevice {struct dio200_subdev_intr* private; } ;
struct comedi_device {int dummy; } ;


 int outb (int ,int ) ;

__attribute__((used)) static void dio200_stop_intr(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 struct dio200_subdev_intr *subpriv = s->private;

 subpriv->active = 0;
 subpriv->enabled_isns = 0;
 if (subpriv->has_int_sce) {
  outb(0, subpriv->iobase);
 }
}
