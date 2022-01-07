
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int EINVAL ;
 int ixgbe_dcb_config_pfc_82598 (struct ixgbe_hw*,int ) ;
 int ixgbe_dcb_config_pfc_82599 (struct ixgbe_hw*,int ,int *) ;




s32 ixgbe_dcb_hw_pfc_config(struct ixgbe_hw *hw, u8 pfc_en, u8 *prio_tc)
{
 int ret = -EINVAL;

 switch (hw->mac.type) {
 case 130:
  ret = ixgbe_dcb_config_pfc_82598(hw, pfc_en);
  break;
 case 129:
 case 128:
  ret = ixgbe_dcb_config_pfc_82599(hw, pfc_en, prio_tc);
  break;
 default:
  break;
 }
 return ret;
}
