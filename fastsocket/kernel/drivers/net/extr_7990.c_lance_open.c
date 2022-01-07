
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lance_private {int devlock; int name; int irq; } ;


 int EAGAIN ;
 int IRQF_SHARED ;
 int lance_interrupt ;
 int lance_reset (struct net_device*) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct net_device*) ;
 int spin_lock_init (int *) ;

int lance_open (struct net_device *dev)
{
        struct lance_private *lp = netdev_priv(dev);
 int res;


        if (request_irq(lp->irq, lance_interrupt, IRQF_SHARED, lp->name, dev))
                return -EAGAIN;

        res = lance_reset(dev);
 spin_lock_init(&lp->devlock);
 netif_start_queue (dev);

 return res;
}
