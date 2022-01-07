
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct ns83820 {struct net_device_stats stats; int misc_lock; } ;
struct net_device {int dummy; } ;


 struct ns83820* PRIV (struct net_device*) ;
 int ns83820_update_stats (struct ns83820*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct net_device_stats *ns83820_get_stats(struct net_device *ndev)
{
 struct ns83820 *dev = PRIV(ndev);


 spin_lock_irq(&dev->misc_lock);
 ns83820_update_stats(dev);
 spin_unlock_irq(&dev->misc_lock);

 return &dev->stats;
}
