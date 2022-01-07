
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {scalar_t__ (* stop_adapter ) (struct ixgbe_hw*) ;scalar_t__ (* setup_sfp ) (struct ixgbe_hw*) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;int (* get_wwn_prefix ) (struct ixgbe_hw*,int *,int *) ;int (* set_rar ) (struct ixgbe_hw*,int,int ,int ,int ) ;int (* get_san_mac_addr ) (struct ixgbe_hw*,int ) ;int (* init_rx_addrs ) (struct ixgbe_hw*) ;int (* get_mac_addr ) (struct ixgbe_hw*,int ) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;int (* check_link ) (struct ixgbe_hw*,int *,int*,int) ;} ;
struct TYPE_8__ {int cached_autoc; int flags; int orig_link_settings_stored; int orig_autoc; int orig_autoc2; int num_rar_entries; int san_mac_rar_index; int wwpn_prefix; int wwnn_prefix; TYPE_3__ ops; int san_addr; int perm_addr; } ;
struct TYPE_5__ {scalar_t__ (* init ) (struct ixgbe_hw*) ;int (* reset ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int sfp_setup_needed; int reset_disable; scalar_t__ multispeed_fiber; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ mac; scalar_t__ wol_enabled; scalar_t__ mng_fw_enabled; TYPE_2__ phy; int force_full_reset; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 int IXGBE_AUTOC ;
 int IXGBE_AUTOC2 ;
 int IXGBE_AUTOC2_LINK_DISABLE_MASK ;
 int IXGBE_AUTOC2_UPPER_MASK ;
 int IXGBE_AUTOC_LMS_MASK ;
 int IXGBE_CTRL ;
 int IXGBE_CTRL_LNK_RST ;
 int IXGBE_CTRL_RST ;
 int IXGBE_CTRL_RST_MASK ;
 scalar_t__ IXGBE_ERR_RESET_FAILED ;
 scalar_t__ IXGBE_ERR_SFP_NOT_SUPPORTED ;
 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ;
 int IXGBE_GSSR_MAC_CSR_SM ;
 int IXGBE_RAH_AV ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int ixgbe_clear_tx_pending (struct ixgbe_hw*) ;
 int ixgbe_reset_pipeline_82599 (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_verify_lesm_fw_enabled_82599 (struct ixgbe_hw*) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 int stub10 (struct ixgbe_hw*,int ) ;
 int stub11 (struct ixgbe_hw*,int,int ,int ,int ) ;
 int stub12 (struct ixgbe_hw*,int *,int *) ;
 scalar_t__ stub2 (struct ixgbe_hw*) ;
 scalar_t__ stub3 (struct ixgbe_hw*) ;
 int stub4 (struct ixgbe_hw*) ;
 int stub5 (struct ixgbe_hw*,int *,int*,int) ;
 scalar_t__ stub6 (struct ixgbe_hw*,int ) ;
 int stub7 (struct ixgbe_hw*,int ) ;
 int stub8 (struct ixgbe_hw*,int ) ;
 int stub9 (struct ixgbe_hw*) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbe_reset_hw_82599(struct ixgbe_hw *hw)
{
 ixgbe_link_speed link_speed;
 s32 status;
 u32 ctrl, i, autoc2;
 u32 curr_lms;
 bool link_up = 0;


 status = hw->mac.ops.stop_adapter(hw);
 if (status != 0)
  goto reset_hw_out;


 ixgbe_clear_tx_pending(hw);




 status = hw->phy.ops.init(hw);

 if (status == IXGBE_ERR_SFP_NOT_SUPPORTED)
  goto reset_hw_out;


 if (hw->phy.sfp_setup_needed) {
  status = hw->mac.ops.setup_sfp(hw);
  hw->phy.sfp_setup_needed = 0;
 }

 if (status == IXGBE_ERR_SFP_NOT_SUPPORTED)
  goto reset_hw_out;


 if (hw->phy.reset_disable == 0 && hw->phy.ops.reset != ((void*)0))
  hw->phy.ops.reset(hw);


 if (hw->mac.cached_autoc)
  curr_lms = hw->mac.cached_autoc & IXGBE_AUTOC_LMS_MASK;
 else
  curr_lms = IXGBE_READ_REG(hw, IXGBE_AUTOC) &
      IXGBE_AUTOC_LMS_MASK;

mac_reset_top:






 ctrl = IXGBE_CTRL_LNK_RST;
 if (!hw->force_full_reset) {
  hw->mac.ops.check_link(hw, &link_speed, &link_up, 0);
  if (link_up)
   ctrl = IXGBE_CTRL_RST;
 }

 ctrl |= IXGBE_READ_REG(hw, IXGBE_CTRL);
 IXGBE_WRITE_REG(hw, IXGBE_CTRL, ctrl);
 IXGBE_WRITE_FLUSH(hw);


 for (i = 0; i < 10; i++) {
  udelay(1);
  ctrl = IXGBE_READ_REG(hw, IXGBE_CTRL);
  if (!(ctrl & IXGBE_CTRL_RST_MASK))
   break;
 }

 if (ctrl & IXGBE_CTRL_RST_MASK) {
  status = IXGBE_ERR_RESET_FAILED;
  hw_dbg(hw, "Reset polling failed to complete.\n");
 }

 msleep(50);






 if (hw->mac.flags & IXGBE_FLAGS_DOUBLE_RESET_REQUIRED) {
  hw->mac.flags &= ~IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;
  goto mac_reset_top;
 }






 hw->mac.cached_autoc = IXGBE_READ_REG(hw, IXGBE_AUTOC);
 autoc2 = IXGBE_READ_REG(hw, IXGBE_AUTOC2);


 if (autoc2 & IXGBE_AUTOC2_LINK_DISABLE_MASK) {
  autoc2 &= ~IXGBE_AUTOC2_LINK_DISABLE_MASK;
  IXGBE_WRITE_REG(hw, IXGBE_AUTOC2, autoc2);
  IXGBE_WRITE_FLUSH(hw);
 }

 if (hw->mac.orig_link_settings_stored == 0) {
  hw->mac.orig_autoc = hw->mac.cached_autoc;
  hw->mac.orig_autoc2 = autoc2;
  hw->mac.orig_link_settings_stored = 1;
 } else {







  if ((hw->phy.multispeed_fiber && hw->mng_fw_enabled) ||
      hw->wol_enabled)
   hw->mac.orig_autoc =
    (hw->mac.orig_autoc & ~IXGBE_AUTOC_LMS_MASK) |
    curr_lms;

  if (hw->mac.cached_autoc != hw->mac.orig_autoc) {




   bool got_lock = 0;
   if (ixgbe_verify_lesm_fw_enabled_82599(hw)) {
    status = hw->mac.ops.acquire_swfw_sync(hw,
       IXGBE_GSSR_MAC_CSR_SM);
    if (status)
     goto reset_hw_out;

    got_lock = 1;
   }

   IXGBE_WRITE_REG(hw, IXGBE_AUTOC, hw->mac.orig_autoc);
   hw->mac.cached_autoc = hw->mac.orig_autoc;
   ixgbe_reset_pipeline_82599(hw);

   if (got_lock)
    hw->mac.ops.release_swfw_sync(hw,
       IXGBE_GSSR_MAC_CSR_SM);
  }

  if ((autoc2 & IXGBE_AUTOC2_UPPER_MASK) !=
      (hw->mac.orig_autoc2 & IXGBE_AUTOC2_UPPER_MASK)) {
   autoc2 &= ~IXGBE_AUTOC2_UPPER_MASK;
   autoc2 |= (hw->mac.orig_autoc2 &
              IXGBE_AUTOC2_UPPER_MASK);
   IXGBE_WRITE_REG(hw, IXGBE_AUTOC2, autoc2);
  }
 }


 hw->mac.ops.get_mac_addr(hw, hw->mac.perm_addr);






 hw->mac.num_rar_entries = 128;
 hw->mac.ops.init_rx_addrs(hw);


 hw->mac.ops.get_san_mac_addr(hw, hw->mac.san_addr);


 if (is_valid_ether_addr(hw->mac.san_addr)) {
  hw->mac.ops.set_rar(hw, hw->mac.num_rar_entries - 1,
                      hw->mac.san_addr, 0, IXGBE_RAH_AV);


  hw->mac.san_mac_rar_index = hw->mac.num_rar_entries - 1;


  hw->mac.num_rar_entries--;
 }


 hw->mac.ops.get_wwn_prefix(hw, &hw->mac.wwnn_prefix,
                                &hw->mac.wwpn_prefix);

reset_hw_out:
 return status;
}
