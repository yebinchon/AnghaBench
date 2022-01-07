
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ count; scalar_t__ forever; } ;


 TYPE_1__* devpriv ;
 int disable_das800 (struct comedi_device*) ;

__attribute__((used)) static int das800_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 devpriv->forever = 0;
 devpriv->count = 0;
 disable_das800(dev);
 return 0;
}
