
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct txx9dmac_dev {int tasklet; TYPE_2__** chan; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ dma; } ;


 int IRQ_HANDLED ;
 int MCR ;
 int dev_vdbg (int ,char*,int ) ;
 int disable_irq_nosync (int) ;
 int dma_readl (struct txx9dmac_dev*,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t txx9dmac_interrupt(int irq, void *dev_id)
{
 struct txx9dmac_dev *ddev = dev_id;

 dev_vdbg(ddev->chan[0]->dma.dev, "interrupt: status=%#x\n",
   dma_readl(ddev, MCR));

 tasklet_schedule(&ddev->tasklet);




 disable_irq_nosync(irq);

 return IRQ_HANDLED;
}
