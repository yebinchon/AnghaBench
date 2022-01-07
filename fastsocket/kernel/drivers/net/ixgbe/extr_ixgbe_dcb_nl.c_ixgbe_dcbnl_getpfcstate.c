
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int pfc_mode_enable; } ;
struct ixgbe_adapter {TYPE_1__ dcb_cfg; } ;


 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u8 ixgbe_dcbnl_getpfcstate(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 return adapter->dcb_cfg.pfc_mode_enable;
}
