
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int ixgbe_dcb_config_rx_arbiter_82598 (struct ixgbe_hw*,int *,int *,int *) ;
 int ixgbe_dcb_config_rx_arbiter_82599 (struct ixgbe_hw*,int *,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tx_data_arbiter_82598 (struct ixgbe_hw*,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tx_data_arbiter_82599 (struct ixgbe_hw*,int *,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tx_desc_arbiter_82598 (struct ixgbe_hw*,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tx_desc_arbiter_82599 (struct ixgbe_hw*,int *,int *,int *,int *) ;




s32 ixgbe_dcb_hw_ets_config(struct ixgbe_hw *hw,
       u16 *refill, u16 *max, u8 *bwg_id,
       u8 *prio_type, u8 *prio_tc)
{
 switch (hw->mac.type) {
 case 130:
  ixgbe_dcb_config_rx_arbiter_82598(hw, refill, max,
       prio_type);
  ixgbe_dcb_config_tx_desc_arbiter_82598(hw, refill, max,
            bwg_id, prio_type);
  ixgbe_dcb_config_tx_data_arbiter_82598(hw, refill, max,
            bwg_id, prio_type);
  break;
 case 129:
 case 128:
  ixgbe_dcb_config_rx_arbiter_82599(hw, refill, max,
        bwg_id, prio_type, prio_tc);
  ixgbe_dcb_config_tx_desc_arbiter_82599(hw, refill, max,
             bwg_id, prio_type);
  ixgbe_dcb_config_tx_data_arbiter_82599(hw, refill, max, bwg_id,
             prio_type, prio_tc);
  break;
 default:
  break;
 }
 return 0;
}
