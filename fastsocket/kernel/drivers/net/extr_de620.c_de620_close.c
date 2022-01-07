
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;


 int RXOFF ;
 int W_TCR ;
 int de620_set_register (struct net_device*,int ,int ) ;
 int free_irq (int ,struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int de620_close(struct net_device *dev)
{
 netif_stop_queue(dev);

 de620_set_register(dev, W_TCR, RXOFF);
 free_irq(dev->irq, dev);
 return 0;
}
