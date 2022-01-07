
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;


 int free_irq (int ,struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int sun3_reset586 () ;

__attribute__((used)) static int sun3_82586_close(struct net_device *dev)
{
 free_irq(dev->irq, dev);

 sun3_reset586();

 netif_stop_queue(dev);

 return 0;
}
