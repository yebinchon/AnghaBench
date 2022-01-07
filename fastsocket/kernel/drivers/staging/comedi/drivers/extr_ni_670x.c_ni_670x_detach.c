
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ irq; scalar_t__ private; TYPE_1__* subdevices; int minor; } ;
struct TYPE_4__ {scalar_t__ mite; } ;
struct TYPE_3__ {scalar_t__ range_table_list; } ;


 TYPE_2__* devpriv ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int kfree (scalar_t__) ;
 int mite_unsetup (scalar_t__) ;
 int printk (char*,int ) ;

__attribute__((used)) static int ni_670x_detach(struct comedi_device *dev)
{
 printk("comedi%d: ni_670x: remove\n", dev->minor);

 if (dev->subdevices[0].range_table_list) {
  kfree(dev->subdevices[0].range_table_list);
 }
 if (dev->private && devpriv->mite)
  mite_unsetup(devpriv->mite);

 if (dev->irq)
  free_irq(dev->irq, dev);

 return 0;
}
