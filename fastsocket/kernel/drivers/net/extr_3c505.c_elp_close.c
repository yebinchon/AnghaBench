
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dma; int irq; int name; } ;
struct TYPE_3__ {scalar_t__ dma_buffer; } ;
typedef TYPE_1__ elp_device ;


 int DMA_BUFFER_SIZE ;
 int elp_debug ;
 int elp_get_stats (struct net_device*) ;
 int free_dma (int ) ;
 int free_irq (int ,struct net_device*) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outb_control (int ,struct net_device*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int elp_close(struct net_device *dev)
{
 elp_device *adapter = netdev_priv(dev);

 if (elp_debug >= 3)
  pr_debug("%s: request to close device\n", dev->name);

 netif_stop_queue(dev);





 (void) elp_get_stats(dev);




 outb_control(0, dev);




 free_irq(dev->irq, dev);

 free_dma(dev->dma);
 free_pages((unsigned long) adapter->dma_buffer, get_order(DMA_BUFFER_SIZE));

 return 0;
}
