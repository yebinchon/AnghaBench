
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ether {int rxirq; int txirq; int clk; int rmiiclk; int check_timer; int tdesc_phys; int tdesc; int rdesc_phys; int rdesc; struct platform_device* pdev; } ;
struct tran_pdesc {int dummy; } ;
struct recv_pdesc {int dummy; } ;
struct platform_device {int dev; } ;
struct net_device {int dummy; } ;


 int clk_disable (int ) ;
 int del_timer_sync (int *) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int free_irq (int ,struct net_device*) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int w90p910_ether_close(struct net_device *dev)
{
 struct w90p910_ether *ether = netdev_priv(dev);
 struct platform_device *pdev;

 pdev = ether->pdev;

 dma_free_coherent(&pdev->dev, sizeof(struct recv_pdesc),
     ether->rdesc, ether->rdesc_phys);
 dma_free_coherent(&pdev->dev, sizeof(struct tran_pdesc),
     ether->tdesc, ether->tdesc_phys);

 netif_stop_queue(dev);

 del_timer_sync(&ether->check_timer);
 clk_disable(ether->rmiiclk);
 clk_disable(ether->clk);

 free_irq(ether->txirq, dev);
 free_irq(ether->rxirq, dev);

 return 0;
}
