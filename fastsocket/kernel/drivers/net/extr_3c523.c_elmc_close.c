
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;


 int elmc_id_reset586 () ;
 int free_irq (int ,struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int elmc_close(struct net_device *dev)
{
 netif_stop_queue(dev);
 elmc_id_reset586();
 free_irq(dev->irq, dev);
 return 0;
}
