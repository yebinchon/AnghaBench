
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ low_water; scalar_t__* high_water; } ;
struct ixgbe_hw {TYPE_1__ fc; } ;
struct ixgbe_adapter {int netdev; struct ixgbe_hw hw; } ;


 scalar_t__ ixgbe_hpbthresh (struct ixgbe_adapter*,int) ;
 scalar_t__ ixgbe_lpbthresh (struct ixgbe_adapter*) ;
 int netdev_get_num_tc (int ) ;

__attribute__((used)) static void ixgbe_pbthresh_setup(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int num_tc = netdev_get_num_tc(adapter->netdev);
 int i;

 if (!num_tc)
  num_tc = 1;

 hw->fc.low_water = ixgbe_lpbthresh(adapter);

 for (i = 0; i < num_tc; i++) {
  hw->fc.high_water[i] = ixgbe_hpbthresh(adapter, i);


  if (hw->fc.low_water > hw->fc.high_water[i])
   hw->fc.low_water = 0;
 }
}
