
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gem {int opened; int pm_mutex; int asleep; } ;


 int gem_do_start (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct gem* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gem_open(struct net_device *dev)
{
 struct gem *gp = netdev_priv(dev);
 int rc = 0;

 mutex_lock(&gp->pm_mutex);


 if (!gp->asleep)
  rc = gem_do_start(dev);
 gp->opened = (rc == 0);

 mutex_unlock(&gp->pm_mutex);

 return rc;
}
