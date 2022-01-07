
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {TYPE_2__* netdev_ops; int features; } ;
struct TYPE_3__ {int refcnt; } ;
struct ixgbe_adapter {int flags; TYPE_1__ fcoe; } ;
struct TYPE_4__ {int (* ndo_open ) (struct net_device*) ;int (* ndo_stop ) (struct net_device*) ;} ;


 int EINVAL ;
 int IXGBE_FLAG_FCOE_ENABLED ;
 int NETIF_F_FCOE_MTU ;
 int atomic_dec_and_test (int *) ;
 int drv ;
 int e_info (int ,char*) ;
 int ixgbe_clear_interrupt_scheme (struct ixgbe_adapter*) ;
 int ixgbe_fcoe_ddp_disable (struct ixgbe_adapter*) ;
 int ixgbe_init_interrupt_scheme (struct ixgbe_adapter*) ;
 int netdev_features_change (struct net_device*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;

int ixgbe_fcoe_disable(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 if (!atomic_dec_and_test(&adapter->fcoe.refcnt))
  return -EINVAL;

 if (!(adapter->flags & IXGBE_FLAG_FCOE_ENABLED))
  return -EINVAL;

 e_info(drv, "Disabling FCoE offload features.\n");
 if (netif_running(netdev))
  netdev->netdev_ops->ndo_stop(netdev);


 ixgbe_fcoe_ddp_disable(adapter);


 adapter->flags &= ~IXGBE_FLAG_FCOE_ENABLED;
 netdev->features &= ~NETIF_F_FCOE_MTU;

 netdev_features_change(netdev);


 ixgbe_clear_interrupt_scheme(adapter);
 ixgbe_init_interrupt_scheme(adapter);

 if (netif_running(netdev))
  netdev->netdev_ops->ndo_open(netdev);

 return 0;
}
