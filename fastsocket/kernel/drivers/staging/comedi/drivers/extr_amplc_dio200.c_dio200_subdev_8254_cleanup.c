
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_intr {int dummy; } ;
struct comedi_subdevice {struct dio200_subdev_intr* private; } ;
struct comedi_device {int dummy; } ;


 int kfree (struct dio200_subdev_intr*) ;

__attribute__((used)) static void
dio200_subdev_8254_cleanup(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct dio200_subdev_intr *subpriv = s->private;

 if (subpriv) {
  kfree(subpriv);
 }
}
