
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_irda {int speed; int open; int rxdma; int txdma; int irlap; int qos; } ;
struct net_device {int irq; int name; } ;


 int DMA_Ser2HSSPRd ;
 int DMA_Ser2HSSPWr ;
 int ENOMEM ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int free_irq (int ,struct net_device*) ;
 int irlap_open (struct net_device*,int *,char*) ;
 struct sa1100_irda* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int power_level ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int sa1100_free_dma (int ) ;
 int sa1100_irda_irq ;
 int sa1100_irda_shutdown (struct sa1100_irda*) ;
 int sa1100_irda_startup (struct sa1100_irda*) ;
 int * sa1100_irda_txdma_irq ;
 int sa1100_request_dma (int ,char*,int *,struct net_device*,int *) ;
 int sa1100_set_power (struct sa1100_irda*,int ) ;

__attribute__((used)) static int sa1100_irda_start(struct net_device *dev)
{
 struct sa1100_irda *si = netdev_priv(dev);
 int err;

 si->speed = 9600;

 err = request_irq(dev->irq, sa1100_irda_irq, 0, dev->name, dev);
 if (err)
  goto err_irq;

 err = sa1100_request_dma(DMA_Ser2HSSPRd, "IrDA receive",
     ((void*)0), ((void*)0), &si->rxdma);
 if (err)
  goto err_rx_dma;

 err = sa1100_request_dma(DMA_Ser2HSSPWr, "IrDA transmit",
     sa1100_irda_txdma_irq, dev, &si->txdma);
 if (err)
  goto err_tx_dma;




 disable_irq(dev->irq);




 err = sa1100_irda_startup(si);
 if (err)
  goto err_startup;




 si->irlap = irlap_open(dev, &si->qos, "sa1100");
 err = -ENOMEM;
 if (!si->irlap)
  goto err_irlap;




 si->open = 1;
 sa1100_set_power(si, power_level);
 enable_irq(dev->irq);
 netif_start_queue(dev);
 return 0;

err_irlap:
 si->open = 0;
 sa1100_irda_shutdown(si);
err_startup:
 sa1100_free_dma(si->txdma);
err_tx_dma:
 sa1100_free_dma(si->rxdma);
err_rx_dma:
 free_irq(dev->irq, dev);
err_irq:
 return err;
}
