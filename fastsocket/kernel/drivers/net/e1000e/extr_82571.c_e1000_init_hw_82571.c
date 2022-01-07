
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ (* setup_link ) (struct e1000_hw*) ;int (* clear_vfta ) (struct e1000_hw*) ;scalar_t__ (* id_led_init ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {scalar_t__ rar_entry_count; scalar_t__ mta_reg_count; int type; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int E1000_GCR_L1_ACT_WITHOUT_L0S_RX ;
 int E1000_MTA ;
 int E1000_TXDCTL_COUNT_DESC ;
 int E1000_TXDCTL_FULL_TX_DESC_WB ;
 int E1000_TXDCTL_WTHRESH ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,scalar_t__,int ) ;
 int GCR ;
 int TXDCTL (int) ;



 int e1000_clear_hw_cntrs_82571 (struct e1000_hw*) ;
 int e1000_initialize_hw_bits_82571 (struct e1000_hw*) ;
 int e1000e_enable_tx_pkt_filtering (struct e1000_hw*) ;
 scalar_t__ e1000e_get_laa_state_82571 (struct e1000_hw*) ;
 int e1000e_init_rx_addrs (struct e1000_hw*,scalar_t__) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 scalar_t__ stub3 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_init_hw_82571(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 reg_data;
 s32 ret_val;
 u16 i, rar_count = mac->rar_entry_count;

 e1000_initialize_hw_bits_82571(hw);


 ret_val = mac->ops.id_led_init(hw);

 if (ret_val)
  e_dbg("Error initializing identification LED\n");


 e_dbg("Initializing the IEEE VLAN\n");
 mac->ops.clear_vfta(hw);






 if (e1000e_get_laa_state_82571(hw))
  rar_count--;
 e1000e_init_rx_addrs(hw, rar_count);


 e_dbg("Zeroing the MTA\n");
 for (i = 0; i < mac->mta_reg_count; i++)
  E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, 0);


 ret_val = mac->ops.setup_link(hw);


 reg_data = er32(TXDCTL(0));
 reg_data = ((reg_data & ~E1000_TXDCTL_WTHRESH) |
      E1000_TXDCTL_FULL_TX_DESC_WB | E1000_TXDCTL_COUNT_DESC);
 ew32(TXDCTL(0), reg_data);


 switch (mac->type) {
 case 130:
  e1000e_enable_tx_pkt_filtering(hw);

 case 129:
 case 128:
  reg_data = er32(GCR);
  reg_data |= E1000_GCR_L1_ACT_WITHOUT_L0S_RX;
  ew32(GCR, reg_data);
  break;
 default:
  reg_data = er32(TXDCTL(1));
  reg_data = ((reg_data & ~E1000_TXDCTL_WTHRESH) |
       E1000_TXDCTL_FULL_TX_DESC_WB |
       E1000_TXDCTL_COUNT_DESC);
  ew32(TXDCTL(1), reg_data);
  break;
 }






 e1000_clear_hw_cntrs_82571(hw);

 return ret_val;
}
