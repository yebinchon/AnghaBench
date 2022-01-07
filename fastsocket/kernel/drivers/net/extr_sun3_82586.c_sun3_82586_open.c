
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; int irq; } ;


 int alloc586 (struct net_device*) ;
 int init586 (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int *,int ,int ,struct net_device*) ;
 int startrecv586 (struct net_device*) ;
 int sun3_82586_interrupt ;
 int sun3_disint () ;
 int sun3_enaint () ;
 int sun3_reset586 () ;

__attribute__((used)) static int sun3_82586_open(struct net_device *dev)
{
 int ret;

 sun3_disint();
 alloc586(dev);
 init586(dev);
 startrecv586(dev);
 sun3_enaint();

 ret = request_irq(dev->irq, &sun3_82586_interrupt,0,dev->name,dev);
 if (ret)
 {
  sun3_reset586();
  return ret;
 }

 netif_start_queue(dev);

 return 0;
}
