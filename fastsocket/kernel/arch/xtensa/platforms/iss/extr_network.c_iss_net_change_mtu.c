
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct iss_net_private {int lock; } ;


 int EINVAL ;
 struct iss_net_private* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int iss_net_change_mtu(struct net_device *dev, int new_mtu)
{
 return -EINVAL;
}
