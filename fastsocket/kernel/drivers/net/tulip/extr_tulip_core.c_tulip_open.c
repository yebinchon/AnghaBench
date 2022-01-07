
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; int irq; } ;


 int IRQF_SHARED ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int *,int ,int ,struct net_device*) ;
 int tulip_free_ring (struct net_device*) ;
 int tulip_init_ring (struct net_device*) ;
 int tulip_interrupt ;
 int tulip_up (struct net_device*) ;

__attribute__((used)) static int
tulip_open(struct net_device *dev)
{
 int retval;

 tulip_init_ring (dev);

 retval = request_irq(dev->irq, &tulip_interrupt, IRQF_SHARED, dev->name, dev);
 if (retval)
  goto free_ring;

 tulip_up (dev);

 netif_start_queue (dev);

 return 0;

free_ring:
 tulip_free_ring (dev);
 return retval;
}
