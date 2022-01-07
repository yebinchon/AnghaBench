
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; int minor; } ;
struct TYPE_8__ {scalar_t__ sprivs; TYPE_1__* asics; } ;
struct TYPE_7__ {int driver_name; } ;
struct TYPE_6__ {int num_asics; } ;
struct TYPE_5__ {scalar_t__ irq; } ;


 int ASIC_IOSIZE ;
 int MAX_ASICS ;
 TYPE_4__* devpriv ;
 TYPE_3__ driver ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int kfree (scalar_t__) ;
 int printk (char*,int ,int ) ;
 int release_region (scalar_t__,int) ;
 TYPE_2__* thisboard ;

__attribute__((used)) static int pcmuio_detach(struct comedi_device *dev)
{
 int i;

 printk("comedi%d: %s: remove\n", dev->minor, driver.driver_name);
 if (dev->iobase)
  release_region(dev->iobase, ASIC_IOSIZE * thisboard->num_asics);

 for (i = 0; i < MAX_ASICS; ++i) {
  if (devpriv->asics[i].irq)
   free_irq(devpriv->asics[i].irq, dev);
 }

 if (devpriv && devpriv->sprivs)
  kfree(devpriv->sprivs);

 return 0;
}
