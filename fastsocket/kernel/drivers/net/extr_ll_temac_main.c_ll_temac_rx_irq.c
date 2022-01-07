
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int ndev; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 unsigned int IRQ_COAL ;
 unsigned int IRQ_DLY ;
 int IRQ_HANDLED ;
 int RX_IRQ_REG ;
 int ll_temac_recv (int ) ;
 struct temac_local* netdev_priv (struct net_device*) ;
 unsigned int temac_dma_in32 (struct temac_local*,int ) ;
 int temac_dma_out32 (struct temac_local*,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t ll_temac_rx_irq(int irq, void *_ndev)
{
 struct net_device *ndev = _ndev;
 struct temac_local *lp = netdev_priv(ndev);
 unsigned int status;


 status = temac_dma_in32(lp, RX_IRQ_REG);
 temac_dma_out32(lp, RX_IRQ_REG, status);

 if (status & (IRQ_COAL | IRQ_DLY))
  ll_temac_recv(lp->ndev);

 return IRQ_HANDLED;
}
