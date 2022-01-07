
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* netdev_ops; int features; } ;
struct ixgbe_fcoe {int refcnt; } ;
struct ixgbe_adapter {int flags; struct ixgbe_fcoe fcoe; } ;
struct TYPE_2__ {int (* ndo_open ) (struct net_device*) ;int (* ndo_stop ) (struct net_device*) ;} ;


 int EINVAL ;
 int IXGBE_FLAG_FCOE_CAPABLE ;
 int IXGBE_FLAG_FCOE_ENABLED ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 int NETIF_F_FCOE_MTU ;
 int atomic_inc (int *) ;
 int drv ;
 int e_info (int ,char*) ;
 int e_warn (int ,char*) ;
 int ixgbe_clear_interrupt_scheme (struct ixgbe_adapter*) ;
 int ixgbe_fcoe_ddp_enable (struct ixgbe_adapter*) ;
 int ixgbe_init_interrupt_scheme (struct ixgbe_adapter*) ;
 int netdev_features_change (struct net_device*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int probe ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;

int ixgbe_fcoe_enable(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_fcoe *fcoe = &adapter->fcoe;

 atomic_inc(&fcoe->refcnt);

 if (!(adapter->flags & IXGBE_FLAG_FCOE_CAPABLE))
  return -EINVAL;

 if (adapter->flags & IXGBE_FLAG_FCOE_ENABLED)
  return -EINVAL;

 e_info(drv, "Enabling FCoE offload features.\n");

 if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
  e_warn(probe, "Enabling FCoE on PF will disable legacy VFs\n");

 if (netif_running(netdev))
  netdev->netdev_ops->ndo_stop(netdev);


 ixgbe_fcoe_ddp_enable(adapter);


 adapter->flags |= IXGBE_FLAG_FCOE_ENABLED;
 netdev->features |= NETIF_F_FCOE_MTU;
 netdev_features_change(netdev);


 ixgbe_clear_interrupt_scheme(adapter);
 ixgbe_init_interrupt_scheme(adapter);

 if (netif_running(netdev))
  netdev->netdev_ops->ndo_open(netdev);

 return 0;
}
