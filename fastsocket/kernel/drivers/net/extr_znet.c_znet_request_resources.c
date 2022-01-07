
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct znet_private {int rx_dma; int tx_dma; int sia_size; int sia_base; int io_size; } ;
struct net_device {int irq; int base_addr; } ;


 int free_dma (int ) ;
 int free_irq (int ,struct net_device*) ;
 struct znet_private* netdev_priv (struct net_device*) ;
 int release_region (int ,int ) ;
 scalar_t__ request_dma (int ,char*) ;
 scalar_t__ request_irq (int ,int *,int ,char*,struct net_device*) ;
 int request_region (int ,int ,char*) ;
 int znet_interrupt ;

__attribute__((used)) static int znet_request_resources (struct net_device *dev)
{
 struct znet_private *znet = netdev_priv(dev);

 if (request_irq (dev->irq, &znet_interrupt, 0, "ZNet", dev))
  goto failed;
 if (request_dma (znet->rx_dma, "ZNet rx"))
  goto free_irq;
 if (request_dma (znet->tx_dma, "ZNet tx"))
  goto free_rx_dma;
 if (!request_region (znet->sia_base, znet->sia_size, "ZNet SIA"))
  goto free_tx_dma;
 if (!request_region (dev->base_addr, znet->io_size, "ZNet I/O"))
  goto free_sia;

 return 0;

 free_sia:
 release_region (znet->sia_base, znet->sia_size);
 free_tx_dma:
 free_dma (znet->tx_dma);
 free_rx_dma:
 free_dma (znet->rx_dma);
 free_irq:
 free_irq (dev->irq, dev);
 failed:
 return -1;
}
