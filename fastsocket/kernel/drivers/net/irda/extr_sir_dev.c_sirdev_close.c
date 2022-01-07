
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sir_driver {int owner; int (* stop_dev ) (struct sir_dev*) ;} ;
struct TYPE_2__ {int sem; } ;
struct sir_dev {TYPE_1__ fsm; scalar_t__ speed; int priv; struct sir_driver* drv; int * irlap; int enable_rx; } ;
struct net_device {int dummy; } ;


 int atomic_set (int *,int ) ;
 int down (int *) ;
 int irlap_close (int *) ;
 int module_put (int ) ;
 struct sir_dev* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int sirdev_free_buffers (struct sir_dev*) ;
 int stub1 (struct sir_dev*) ;
 scalar_t__ unlikely (int) ;
 int up (int *) ;

__attribute__((used)) static int sirdev_close(struct net_device *ndev)
{
 struct sir_dev *dev = netdev_priv(ndev);
 const struct sir_driver *drv;



 netif_stop_queue(ndev);

 down(&dev->fsm.sem);

 atomic_set(&dev->enable_rx, 0);

 if (unlikely(!dev->irlap))
  goto out;
 irlap_close(dev->irlap);
 dev->irlap = ((void*)0);

 drv = dev->drv;
 if (unlikely(!drv || !dev->priv))
  goto out;

 if (drv->stop_dev)
  drv->stop_dev(dev);

 sirdev_free_buffers(dev);
 module_put(drv->owner);

out:
 dev->speed = 0;
 up(&dev->fsm.sem);
 return 0;
}
