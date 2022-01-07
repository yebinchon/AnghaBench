
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipg_nic_private {int mii_mutex; int mii_if; } ;


 int mii_nway_restart (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ipg_nic_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ipg_nway_reset(struct net_device *dev)
{
 struct ipg_nic_private *sp = netdev_priv(dev);
 int rc;

 mutex_lock(&sp->mii_mutex);
 rc = mii_nway_restart(&sp->mii_if);
 mutex_unlock(&sp->mii_mutex);

 return rc;
}
