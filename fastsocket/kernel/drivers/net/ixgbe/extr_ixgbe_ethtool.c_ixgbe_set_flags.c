
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags2; scalar_t__ rx_itr_setting; int flags; TYPE_2__ hw; } ;


 int ETH_FLAG_LRO ;
 int ETH_FLAG_NTUPLE ;
 int IXGBE_FLAG2_RSC_CAPABLE ;
 int IXGBE_FLAG2_RSC_ENABLED ;
 int IXGBE_FLAG_DCB_ENABLED ;
 int IXGBE_FLAG_FDIR_HASH_CAPABLE ;
 int IXGBE_FLAG_FDIR_PERFECT_CAPABLE ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 scalar_t__ IXGBE_MAX_RSC_INT_RATE ;
 int e_info (int ,char*) ;
 int ethtool_op_set_flags (struct net_device*,int) ;
 int ixgbe_adapter_fdir_capable (struct ixgbe_adapter*) ;
 int ixgbe_do_reset (struct net_device*) ;


 int ixgbe_set_rsc (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int probe ;

__attribute__((used)) static int ixgbe_set_flags(struct net_device *netdev, u32 data)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 bool need_reset = 0;
 int rc;

 rc = ethtool_op_set_flags(netdev, data);
 if (rc)
  return rc;


 if ((adapter->flags2 & IXGBE_FLAG2_RSC_CAPABLE) &&
     (!!(data & ETH_FLAG_LRO) !=
      !!(adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED))) {
  if ((data & ETH_FLAG_LRO) &&
      (!adapter->rx_itr_setting ||
       (adapter->rx_itr_setting > IXGBE_MAX_RSC_INT_RATE))) {
   e_info(probe, "rx-usecs set too low, "
          "not enabling RSC.\n");
  } else {
   adapter->flags2 ^= IXGBE_FLAG2_RSC_ENABLED;
   switch (adapter->hw.mac.type) {
   case 128:
    ixgbe_set_rsc(adapter);
    break;
   case 129:
    need_reset = 1;
    break;
   default:
    break;
   }
  }
 }





 if (!ixgbe_adapter_fdir_capable(adapter))
  goto skip_fdir;

 if (!(adapter->flags & IXGBE_FLAG_FDIR_PERFECT_CAPABLE)) {

  if (data & ETH_FLAG_NTUPLE) {
   adapter->flags &= ~IXGBE_FLAG_FDIR_HASH_CAPABLE;
   adapter->flags |= IXGBE_FLAG_FDIR_PERFECT_CAPABLE;
   need_reset = 1;
  }
 } else if (!(data & ETH_FLAG_NTUPLE)) {

  adapter->flags &= ~IXGBE_FLAG_FDIR_PERFECT_CAPABLE;
  if (!(adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) &&
      !(adapter->flags & IXGBE_FLAG_DCB_ENABLED))
   adapter->flags |= IXGBE_FLAG_FDIR_HASH_CAPABLE;
  need_reset = 1;
 }

skip_fdir:
 if (need_reset)
  ixgbe_do_reset(netdev);
 return 0;

}
