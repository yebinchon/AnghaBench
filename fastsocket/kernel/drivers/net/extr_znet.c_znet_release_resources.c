
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct znet_private {int rx_dma; int tx_dma; int io_size; int sia_size; int sia_base; } ;
struct net_device {int irq; int base_addr; } ;


 int free_dma (int ) ;
 int free_irq (int ,struct net_device*) ;
 struct znet_private* netdev_priv (struct net_device*) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void znet_release_resources (struct net_device *dev)
{
 struct znet_private *znet = netdev_priv(dev);

 release_region (znet->sia_base, znet->sia_size);
 release_region (dev->base_addr, znet->io_size);
 free_dma (znet->tx_dma);
 free_dma (znet->rx_dma);
 free_irq (dev->irq, dev);
}
