
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int minor; scalar_t__ private; scalar_t__ irq; scalar_t__ iobase; } ;
struct TYPE_4__ {scalar_t__ ai_buf1; scalar_t__ ai_buf0; scalar_t__ dma1; scalar_t__ dma0; scalar_t__ iobase2; } ;
struct TYPE_3__ {int driver_name; } ;


 int DAS1800_SIZE ;
 TYPE_2__* devpriv ;
 TYPE_1__ driver_das1800 ;
 int free_dma (scalar_t__) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int kfree (scalar_t__) ;
 int printk (char*,int ,int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int das1800_detach(struct comedi_device *dev)
{

 if (dev->iobase)
  release_region(dev->iobase, DAS1800_SIZE);
 if (dev->irq)
  free_irq(dev->irq, dev);
 if (dev->private) {
  if (devpriv->iobase2)
   release_region(devpriv->iobase2, DAS1800_SIZE);
  if (devpriv->dma0)
   free_dma(devpriv->dma0);
  if (devpriv->dma1)
   free_dma(devpriv->dma1);
  if (devpriv->ai_buf0)
   kfree(devpriv->ai_buf0);
  if (devpriv->ai_buf1)
   kfree(devpriv->ai_buf1);
 }

 printk("comedi%d: %s: remove\n", dev->minor,
        driver_das1800.driver_name);

 return 0;
}
