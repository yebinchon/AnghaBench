
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnx2x {int dummy; } ;


 int LOAD_NORMAL ;
 int UNLOAD_NORMAL ;
 int bnx2x_nic_load (struct bnx2x*,int ) ;
 int bnx2x_nic_unload (struct bnx2x*,int ,int) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 scalar_t__ unlikely (int) ;

int bnx2x_reload_if_running(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);

 if (unlikely(!netif_running(dev)))
  return 0;

 bnx2x_nic_unload(bp, UNLOAD_NORMAL, 1);
 return bnx2x_nic_load(bp, LOAD_NORMAL);
}
