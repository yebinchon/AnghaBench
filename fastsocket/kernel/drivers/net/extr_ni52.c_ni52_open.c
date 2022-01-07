
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; int irq; } ;


 int alloc586 (struct net_device*) ;
 int init586 (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int ni52_interrupt ;
 int ni_disint () ;
 int ni_enaint () ;
 int ni_reset586 () ;
 int request_irq (int ,int *,int ,int ,struct net_device*) ;
 int startrecv586 (struct net_device*) ;

__attribute__((used)) static int ni52_open(struct net_device *dev)
{
 int ret;

 ni_disint();
 alloc586(dev);
 init586(dev);
 startrecv586(dev);
 ni_enaint();

 ret = request_irq(dev->irq, &ni52_interrupt, 0, dev->name, dev);
 if (ret) {
  ni_reset586();
  return ret;
 }
 netif_start_queue(dev);
 return 0;
}
