
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {int fd; int list; int user; int (* close ) (int,int *) ;} ;
struct net_device {int irq; } ;


 int free_irq (int ,struct net_device*) ;
 int list_del (int *) ;
 struct uml_net_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int opened_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int,int *) ;

__attribute__((used)) static int uml_net_close(struct net_device *dev)
{
 struct uml_net_private *lp = netdev_priv(dev);

 netif_stop_queue(dev);

 free_irq(dev->irq, dev);
 if (lp->close != ((void*)0))
  (*lp->close)(lp->fd, &lp->user);
 lp->fd = -1;

 spin_lock(&opened_lock);
 list_del(&lp->list);
 spin_unlock(&opened_lock);

 return 0;
}
