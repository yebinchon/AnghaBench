
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int ndev; } ;
struct net_device {int dev; } ;
typedef int irqreturn_t ;


 unsigned int IRQ_COAL ;
 unsigned int IRQ_DLY ;
 int IRQ_HANDLED ;
 int TX_IRQ_REG ;
 int dev_err (int *,char*,unsigned int) ;
 struct temac_local* netdev_priv (struct net_device*) ;
 unsigned int temac_dma_in32 (struct temac_local*,int ) ;
 int temac_dma_out32 (struct temac_local*,int ,unsigned int) ;
 int temac_start_xmit_done (int ) ;

__attribute__((used)) static irqreturn_t ll_temac_tx_irq(int irq, void *_ndev)
{
 struct net_device *ndev = _ndev;
 struct temac_local *lp = netdev_priv(ndev);
 unsigned int status;

 status = temac_dma_in32(lp, TX_IRQ_REG);
 temac_dma_out32(lp, TX_IRQ_REG, status);

 if (status & (IRQ_COAL | IRQ_DLY))
  temac_start_xmit_done(lp->ndev);
 if (status & 0x080)
  dev_err(&ndev->dev, "DMA error 0x%x\n", status);

 return IRQ_HANDLED;
}
