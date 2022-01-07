
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;


 int ixgbe_dcb_read_rtrup2tc_82599 (struct ixgbe_hw*,int *) ;



void ixgbe_dcb_read_rtrup2tc(struct ixgbe_hw *hw, u8 *map)
{
 switch (hw->mac.type) {
 case 129:
 case 128:
  ixgbe_dcb_read_rtrup2tc_82599(hw, map);
  break;
 default:
  break;
 }
}
