
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int ixgbe_dcb_config_pfc_82599 (struct ixgbe_hw*,int ,int *) ;
 int ixgbe_dcb_config_rx_arbiter_82599 (struct ixgbe_hw*,int *,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tc_stats_82599 (struct ixgbe_hw*) ;
 int ixgbe_dcb_config_tx_data_arbiter_82599 (struct ixgbe_hw*,int *,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tx_desc_arbiter_82599 (struct ixgbe_hw*,int *,int *,int *,int *) ;

s32 ixgbe_dcb_hw_config_82599(struct ixgbe_hw *hw, u8 pfc_en, u16 *refill,
         u16 *max, u8 *bwg_id, u8 *prio_type, u8 *prio_tc)
{
 ixgbe_dcb_config_rx_arbiter_82599(hw, refill, max, bwg_id,
       prio_type, prio_tc);
 ixgbe_dcb_config_tx_desc_arbiter_82599(hw, refill, max,
            bwg_id, prio_type);
 ixgbe_dcb_config_tx_data_arbiter_82599(hw, refill, max,
            bwg_id, prio_type, prio_tc);
 ixgbe_dcb_config_pfc_82599(hw, pfc_en, prio_tc);
 ixgbe_dcb_config_tc_stats_82599(hw);

 return 0;
}
