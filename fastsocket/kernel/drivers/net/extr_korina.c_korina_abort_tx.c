
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct korina_private {int tx_dma_regs; } ;


 int korina_abort_dma (struct net_device*,int ) ;
 struct korina_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void korina_abort_tx(struct net_device *dev)
{
 struct korina_private *lp = netdev_priv(dev);

 korina_abort_dma(dev, lp->tx_dma_regs);
}
