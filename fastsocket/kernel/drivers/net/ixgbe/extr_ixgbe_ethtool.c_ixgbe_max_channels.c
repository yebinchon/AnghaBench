
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; scalar_t__ atr_sample_rate; TYPE_2__ hw; int netdev; } ;


 int IXGBE_FLAG_MSIX_ENABLED ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 unsigned int IXGBE_MAX_FDIR_INDICES ;
 unsigned int IXGBE_MAX_RSS_INDICES ;
 scalar_t__ ixgbe_mac_82598EB ;
 int netdev_get_num_tc (int ) ;

__attribute__((used)) static unsigned int ixgbe_max_channels(struct ixgbe_adapter *adapter)
{
 unsigned int max_combined;
 u8 tcs = netdev_get_num_tc(adapter->netdev);

 if (!(adapter->flags & IXGBE_FLAG_MSIX_ENABLED)) {

  max_combined = 1;
 } else if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) {

  max_combined = 1;
 } else if (tcs > 1) {

  if (adapter->hw.mac.type == ixgbe_mac_82598EB) {

   max_combined = 4;
  } else if (tcs > 4) {

   max_combined = 8;
  } else {

   max_combined = 16;
  }
 } else if (adapter->atr_sample_rate) {

  max_combined = IXGBE_MAX_FDIR_INDICES;
 } else {

  max_combined = IXGBE_MAX_RSS_INDICES;
 }

 return max_combined;
}
