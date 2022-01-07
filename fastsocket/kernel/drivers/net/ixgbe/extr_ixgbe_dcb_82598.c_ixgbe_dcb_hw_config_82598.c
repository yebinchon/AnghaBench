
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int ixgbe_dcb_config_pfc_82598 (struct ixgbe_hw*,int ) ;
 int ixgbe_dcb_config_rx_arbiter_82598 (struct ixgbe_hw*,int *,int *,int *) ;
 int ixgbe_dcb_config_tc_stats_82598 (struct ixgbe_hw*) ;
 int ixgbe_dcb_config_tx_data_arbiter_82598 (struct ixgbe_hw*,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tx_desc_arbiter_82598 (struct ixgbe_hw*,int *,int *,int *,int *) ;

s32 ixgbe_dcb_hw_config_82598(struct ixgbe_hw *hw, u8 pfc_en, u16 *refill,
         u16 *max, u8 *bwg_id, u8 *prio_type)
{
 ixgbe_dcb_config_rx_arbiter_82598(hw, refill, max, prio_type);
 ixgbe_dcb_config_tx_desc_arbiter_82598(hw, refill, max,
            bwg_id, prio_type);
 ixgbe_dcb_config_tx_data_arbiter_82598(hw, refill, max,
            bwg_id, prio_type);
 ixgbe_dcb_config_pfc_82598(hw, pfc_en);
 ixgbe_dcb_config_tc_stats_82598(hw);

 return 0;
}
