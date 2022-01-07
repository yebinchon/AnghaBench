
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ (* setup_link ) (struct e1000_hw*) ;int (* clear_vfta ) (struct e1000_hw*) ;scalar_t__ (* id_led_init ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int mta_reg_count; TYPE_1__ ops; int rar_entry_count; } ;
struct TYPE_5__ {int mdic_wa_enable; } ;
struct TYPE_6__ {TYPE_2__ e80003es2lan; } ;
struct e1000_hw {TYPE_3__ dev_spec; struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int DEFAULT_TCTL_EXT_GCEX_80003ES2LAN ;
 int DEFAULT_TIPG_IPGT_1000_80003ES2LAN ;
 int E1000_FFLT ;
 int E1000_KMRNCTRLSTA_IBIST_DISABLE ;
 int E1000_KMRNCTRLSTA_INBAND_PARAM ;
 int E1000_KMRNCTRLSTA_OFFSET ;
 int E1000_KMRNCTRLSTA_OFFSET_SHIFT ;
 int E1000_KMRNCTRLSTA_OPMODE_INBAND_MDIO ;
 int E1000_KMRNCTRLSTA_OPMODE_MASK ;
 int E1000_MTA ;
 int E1000_READ_REG_ARRAY (struct e1000_hw*,int ,int) ;
 int E1000_TCTL_EXT_GCEX_MASK ;
 int E1000_TCTL_RTLC ;
 int E1000_TIPG_IPGT_MASK ;
 int E1000_TXDCTL_COUNT_DESC ;
 int E1000_TXDCTL_FULL_TX_DESC_WB ;
 int E1000_TXDCTL_WTHRESH ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,int,int) ;
 int TCTL ;
 int TCTL_EXT ;
 int TIPG ;
 int TXDCTL (int) ;
 int e1000_clear_hw_cntrs_80003es2lan (struct e1000_hw*) ;
 int e1000_initialize_hw_bits_80003es2lan (struct e1000_hw*) ;
 scalar_t__ e1000_read_kmrn_reg_80003es2lan (struct e1000_hw*,int,int*) ;
 int e1000_write_kmrn_reg_80003es2lan (struct e1000_hw*,int,int) ;
 int e1000e_init_rx_addrs (struct e1000_hw*,int ) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 scalar_t__ stub3 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_init_hw_80003es2lan(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 reg_data;
 s32 ret_val;
 u16 kum_reg_data;
 u16 i;

 e1000_initialize_hw_bits_80003es2lan(hw);


 ret_val = mac->ops.id_led_init(hw);

 if (ret_val)
  e_dbg("Error initializing identification LED\n");


 e_dbg("Initializing the IEEE VLAN\n");
 mac->ops.clear_vfta(hw);


 e1000e_init_rx_addrs(hw, mac->rar_entry_count);


 e_dbg("Zeroing the MTA\n");
 for (i = 0; i < mac->mta_reg_count; i++)
  E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, 0);


 ret_val = mac->ops.setup_link(hw);
 if (ret_val)
  return ret_val;


 e1000_read_kmrn_reg_80003es2lan(hw, E1000_KMRNCTRLSTA_INBAND_PARAM,
     &kum_reg_data);
 kum_reg_data |= E1000_KMRNCTRLSTA_IBIST_DISABLE;
 e1000_write_kmrn_reg_80003es2lan(hw, E1000_KMRNCTRLSTA_INBAND_PARAM,
      kum_reg_data);


 reg_data = er32(TXDCTL(0));
 reg_data = ((reg_data & ~E1000_TXDCTL_WTHRESH) |
      E1000_TXDCTL_FULL_TX_DESC_WB | E1000_TXDCTL_COUNT_DESC);
 ew32(TXDCTL(0), reg_data);


 reg_data = er32(TXDCTL(1));
 reg_data = ((reg_data & ~E1000_TXDCTL_WTHRESH) |
      E1000_TXDCTL_FULL_TX_DESC_WB | E1000_TXDCTL_COUNT_DESC);
 ew32(TXDCTL(1), reg_data);


 reg_data = er32(TCTL);
 reg_data |= E1000_TCTL_RTLC;
 ew32(TCTL, reg_data);


 reg_data = er32(TCTL_EXT);
 reg_data &= ~E1000_TCTL_EXT_GCEX_MASK;
 reg_data |= DEFAULT_TCTL_EXT_GCEX_80003ES2LAN;
 ew32(TCTL_EXT, reg_data);


 reg_data = er32(TIPG);
 reg_data &= ~E1000_TIPG_IPGT_MASK;
 reg_data |= DEFAULT_TIPG_IPGT_1000_80003ES2LAN;
 ew32(TIPG, reg_data);

 reg_data = E1000_READ_REG_ARRAY(hw, E1000_FFLT, 0x0001);
 reg_data &= ~0x00100000;
 E1000_WRITE_REG_ARRAY(hw, E1000_FFLT, 0x0001, reg_data);


 hw->dev_spec.e80003es2lan.mdic_wa_enable = 1;

 ret_val =
     e1000_read_kmrn_reg_80003es2lan(hw, E1000_KMRNCTRLSTA_OFFSET >>
         E1000_KMRNCTRLSTA_OFFSET_SHIFT, &i);
 if (!ret_val) {
  if ((i & E1000_KMRNCTRLSTA_OPMODE_MASK) ==
       E1000_KMRNCTRLSTA_OPMODE_INBAND_MDIO)
   hw->dev_spec.e80003es2lan.mdic_wa_enable = 0;
 }






 e1000_clear_hw_cntrs_80003es2lan(hw);

 return ret_val;
}
