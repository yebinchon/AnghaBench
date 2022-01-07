
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* tc_config; } ;
struct ixgbe_adapter {TYPE_2__ dcb_cfg; } ;
struct TYPE_3__ {int dcb_pfc; } ;


 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbe_dcbnl_get_pfc_cfg(struct net_device *netdev, int priority,
                                    u8 *setting)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 *setting = adapter->dcb_cfg.tc_config[priority].dcb_pfc;
}
