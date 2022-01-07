
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gem {int pm_mutex; int asleep; scalar_t__ opened; int napi; } ;


 int gem_do_stop (struct net_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int napi_disable (int *) ;
 struct gem* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gem_close(struct net_device *dev)
{
 struct gem *gp = netdev_priv(dev);

 mutex_lock(&gp->pm_mutex);

 napi_disable(&gp->napi);

 gp->opened = 0;
 if (!gp->asleep)
  gem_do_stop(dev, 0);

 mutex_unlock(&gp->pm_mutex);

 return 0;
}
