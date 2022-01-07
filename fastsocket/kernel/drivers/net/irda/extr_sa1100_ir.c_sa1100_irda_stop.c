
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_irda {int rxdma; int txdma; scalar_t__ open; int * irlap; int * rxskb; int rxbuf_dma; int dev; } ;
struct net_device {int irq; } ;


 int DMA_FROM_DEVICE ;
 int HPSIR_MAX_RXLEN ;
 int dev_kfree_skb (int *) ;
 int disable_irq (int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int free_irq (int ,struct net_device*) ;
 int irlap_close (int *) ;
 struct sa1100_irda* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int sa1100_free_dma (int ) ;
 int sa1100_irda_shutdown (struct sa1100_irda*) ;
 int sa1100_set_power (struct sa1100_irda*,int ) ;

__attribute__((used)) static int sa1100_irda_stop(struct net_device *dev)
{
 struct sa1100_irda *si = netdev_priv(dev);

 disable_irq(dev->irq);
 sa1100_irda_shutdown(si);





 if (si->rxskb) {
  dma_unmap_single(si->dev, si->rxbuf_dma, HPSIR_MAX_RXLEN,
     DMA_FROM_DEVICE);
  dev_kfree_skb(si->rxskb);
  si->rxskb = ((void*)0);
 }


 if (si->irlap) {
  irlap_close(si->irlap);
  si->irlap = ((void*)0);
 }

 netif_stop_queue(dev);
 si->open = 0;




 sa1100_free_dma(si->txdma);
 sa1100_free_dma(si->rxdma);
 free_irq(dev->irq, dev);

 sa1100_set_power(si, 0);

 return 0;
}
