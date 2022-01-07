
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_7__ {scalar_t__ (* stop_adapter ) (struct ixgbe_hw*) ;int (* init_rx_addrs ) (struct ixgbe_hw*) ;int (* get_mac_addr ) (struct ixgbe_hw*,int ) ;int (* write_analog_reg8 ) (struct ixgbe_hw*,int ,int) ;int (* read_analog_reg8 ) (struct ixgbe_hw*,int ,int*) ;} ;
struct TYPE_8__ {int flags; int orig_link_settings_stored; int orig_autoc; TYPE_3__ ops; int perm_addr; } ;
struct TYPE_5__ {scalar_t__ (* init ) (struct ixgbe_hw*) ;int (* reset ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int reset_disable; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ mac; TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int IXGBE_ATLAS_PDN_10G ;
 int IXGBE_ATLAS_PDN_1G ;
 int IXGBE_ATLAS_PDN_AN ;
 int IXGBE_ATLAS_PDN_LPBK ;
 int IXGBE_ATLAS_PDN_TX_10G_QL_ALL ;
 int IXGBE_ATLAS_PDN_TX_1G_QL_ALL ;
 int IXGBE_ATLAS_PDN_TX_AN_QL_ALL ;
 int IXGBE_ATLAS_PDN_TX_REG_EN ;
 int IXGBE_AUTOC ;
 int IXGBE_CTRL ;
 int IXGBE_CTRL_RST ;
 scalar_t__ IXGBE_ERR_RESET_FAILED ;
 scalar_t__ IXGBE_ERR_SFP_NOT_PRESENT ;
 scalar_t__ IXGBE_ERR_SFP_NOT_SUPPORTED ;
 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ;
 int IXGBE_GHECCR ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 int stub10 (struct ixgbe_hw*,int ,int) ;
 scalar_t__ stub11 (struct ixgbe_hw*) ;
 int stub12 (struct ixgbe_hw*) ;
 int stub13 (struct ixgbe_hw*,int ) ;
 int stub14 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*,int ,int*) ;
 int stub3 (struct ixgbe_hw*,int ,int*) ;
 int stub4 (struct ixgbe_hw*,int ,int) ;
 int stub5 (struct ixgbe_hw*,int ,int*) ;
 int stub6 (struct ixgbe_hw*,int ,int) ;
 int stub7 (struct ixgbe_hw*,int ,int*) ;
 int stub8 (struct ixgbe_hw*,int ,int) ;
 int stub9 (struct ixgbe_hw*,int ,int*) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbe_reset_hw_82598(struct ixgbe_hw *hw)
{
 s32 status = 0;
 s32 phy_status = 0;
 u32 ctrl;
 u32 gheccr;
 u32 i;
 u32 autoc;
 u8 analog_val;


 status = hw->mac.ops.stop_adapter(hw);
 if (status != 0)
  goto reset_hw_out;






 hw->mac.ops.read_analog_reg8(hw, IXGBE_ATLAS_PDN_LPBK, &analog_val);
 if (analog_val & IXGBE_ATLAS_PDN_TX_REG_EN) {

  hw->mac.ops.read_analog_reg8(hw, IXGBE_ATLAS_PDN_LPBK,
                               &analog_val);
  analog_val &= ~IXGBE_ATLAS_PDN_TX_REG_EN;
  hw->mac.ops.write_analog_reg8(hw, IXGBE_ATLAS_PDN_LPBK,
                                analog_val);

  hw->mac.ops.read_analog_reg8(hw, IXGBE_ATLAS_PDN_10G,
                               &analog_val);
  analog_val &= ~IXGBE_ATLAS_PDN_TX_10G_QL_ALL;
  hw->mac.ops.write_analog_reg8(hw, IXGBE_ATLAS_PDN_10G,
                                analog_val);

  hw->mac.ops.read_analog_reg8(hw, IXGBE_ATLAS_PDN_1G,
                               &analog_val);
  analog_val &= ~IXGBE_ATLAS_PDN_TX_1G_QL_ALL;
  hw->mac.ops.write_analog_reg8(hw, IXGBE_ATLAS_PDN_1G,
                                analog_val);

  hw->mac.ops.read_analog_reg8(hw, IXGBE_ATLAS_PDN_AN,
                               &analog_val);
  analog_val &= ~IXGBE_ATLAS_PDN_TX_AN_QL_ALL;
  hw->mac.ops.write_analog_reg8(hw, IXGBE_ATLAS_PDN_AN,
                                analog_val);
 }


 if (hw->phy.reset_disable == 0) {



  phy_status = hw->phy.ops.init(hw);
  if (phy_status == IXGBE_ERR_SFP_NOT_SUPPORTED)
   goto reset_hw_out;
  if (phy_status == IXGBE_ERR_SFP_NOT_PRESENT)
   goto mac_reset_top;

  hw->phy.ops.reset(hw);
 }

mac_reset_top:




 ctrl = IXGBE_READ_REG(hw, IXGBE_CTRL) | IXGBE_CTRL_RST;
 IXGBE_WRITE_REG(hw, IXGBE_CTRL, ctrl);
 IXGBE_WRITE_FLUSH(hw);


 for (i = 0; i < 10; i++) {
  udelay(1);
  ctrl = IXGBE_READ_REG(hw, IXGBE_CTRL);
  if (!(ctrl & IXGBE_CTRL_RST))
   break;
 }
 if (ctrl & IXGBE_CTRL_RST) {
  status = IXGBE_ERR_RESET_FAILED;
  hw_dbg(hw, "Reset polling failed to complete.\n");
 }

 msleep(50);






 if (hw->mac.flags & IXGBE_FLAGS_DOUBLE_RESET_REQUIRED) {
  hw->mac.flags &= ~IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;
  goto mac_reset_top;
 }

 gheccr = IXGBE_READ_REG(hw, IXGBE_GHECCR);
 gheccr &= ~((1 << 21) | (1 << 18) | (1 << 9) | (1 << 6));
 IXGBE_WRITE_REG(hw, IXGBE_GHECCR, gheccr);






 autoc = IXGBE_READ_REG(hw, IXGBE_AUTOC);
 if (hw->mac.orig_link_settings_stored == 0) {
  hw->mac.orig_autoc = autoc;
  hw->mac.orig_link_settings_stored = 1;
 } else if (autoc != hw->mac.orig_autoc) {
  IXGBE_WRITE_REG(hw, IXGBE_AUTOC, hw->mac.orig_autoc);
 }


 hw->mac.ops.get_mac_addr(hw, hw->mac.perm_addr);





 hw->mac.ops.init_rx_addrs(hw);

reset_hw_out:
 if (phy_status)
  status = phy_status;

 return status;
}
