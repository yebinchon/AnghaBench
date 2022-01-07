
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ei_device {int page_lock; } ;


 int ei_debug ;
 int ether_setup (struct net_device*) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int printk (int ) ;
 int spin_lock_init (int *) ;
 int version ;

__attribute__((used)) static void ethdev_setup(struct net_device *dev)
{
 struct ei_device *ei_local = (struct ei_device *) netdev_priv(dev);
 if (ei_debug > 1)
  printk(version);

 ether_setup(dev);

 spin_lock_init(&ei_local->page_lock);
}
