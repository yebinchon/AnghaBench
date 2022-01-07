
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct frad_local {int (* deassoc ) (struct net_device*,struct net_device*) ;} ;
struct dlci_local {int list; struct net_device* slave; } ;
struct dlci_add {int devname; } ;


 int EBUSY ;
 int ENODEV ;
 struct net_device* __dev_get_by_name (int *,int ) ;
 int dev_put (struct net_device*) ;
 int init_net ;
 int list_del (int *) ;
 void* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct net_device*,struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;

__attribute__((used)) static int dlci_del(struct dlci_add *dlci)
{
 struct dlci_local *dlp;
 struct frad_local *flp;
 struct net_device *master, *slave;
 int err;


 master = __dev_get_by_name(&init_net, dlci->devname);
 if (!master)
  return(-ENODEV);

 if (netif_running(master)) {
  return(-EBUSY);
 }

 dlp = netdev_priv(master);
 slave = dlp->slave;
 flp = netdev_priv(slave);

 rtnl_lock();
 err = (*flp->deassoc)(slave, master);
 if (!err) {
  list_del(&dlp->list);

  unregister_netdevice(master);

  dev_put(slave);
 }
 rtnl_unlock();

 return(err);
}
