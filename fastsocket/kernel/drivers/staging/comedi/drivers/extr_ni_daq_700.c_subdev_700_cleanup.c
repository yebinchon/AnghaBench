
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {scalar_t__ private; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ have_irq; } ;


 int kfree (scalar_t__) ;
 TYPE_1__* subdevpriv ;

void subdev_700_cleanup(struct comedi_device *dev, struct comedi_subdevice *s)
{
 if (s->private) {
  if (subdevpriv->have_irq) {
  }

  kfree(s->private);
 }
}
