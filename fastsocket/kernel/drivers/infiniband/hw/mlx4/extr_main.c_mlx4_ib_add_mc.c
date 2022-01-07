
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx4_ib_qp {int port; } ;
struct TYPE_2__ {struct net_device** netdevs; int lock; } ;
struct mlx4_ib_dev {TYPE_1__ iboe; } ;
struct in6_addr {int dummy; } ;


 int dev_hold (struct net_device*) ;
 int dev_mc_add (struct net_device*,int *,int,int ) ;
 int dev_put (struct net_device*) ;
 int rdma_get_mcast_mac (struct in6_addr*,int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int mlx4_ib_add_mc(struct mlx4_ib_dev *mdev, struct mlx4_ib_qp *mqp,
     union ib_gid *gid)
{
 u8 mac[6];
 struct net_device *ndev;
 int ret = 0;

 if (!mqp->port)
  return 0;

 spin_lock(&mdev->iboe.lock);
 ndev = mdev->iboe.netdevs[mqp->port - 1];
 if (ndev)
  dev_hold(ndev);
 spin_unlock(&mdev->iboe.lock);

 if (ndev) {
  rdma_get_mcast_mac((struct in6_addr *)gid, mac);
  rtnl_lock();
  dev_mc_add(mdev->iboe.netdevs[mqp->port - 1], mac, 6, 0);
  ret = 1;
  rtnl_unlock();
  dev_put(ndev);
 }

 return ret;
}
