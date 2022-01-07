
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int pfc_tcs; int pg_tcs; } ;
struct TYPE_4__ {TYPE_1__ num_tcs; } ;
struct ixgbe_adapter {int flags; TYPE_2__ dcb_cfg; } ;




 int EINVAL ;
 int IXGBE_FLAG_DCB_ENABLED ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u8 ixgbe_dcbnl_getnumtcs(struct net_device *netdev, int tcid, u8 *num)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 if (adapter->flags & IXGBE_FLAG_DCB_ENABLED) {
  switch (tcid) {
  case 128:
   *num = adapter->dcb_cfg.num_tcs.pg_tcs;
   break;
  case 129:
   *num = adapter->dcb_cfg.num_tcs.pfc_tcs;
   break;
  default:
   return -EINVAL;
   break;
  }
 } else {
  return -EINVAL;
 }

 return 0;
}
