
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_14__ {int (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int get_link_status; int type; TYPE_7__ ops; int autoneg; } ;
struct TYPE_8__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_13__ {int type; TYPE_1__ ops; } ;
struct TYPE_11__ {scalar_t__ eee_lp_ability; } ;
struct TYPE_12__ {TYPE_4__ ich8lan; } ;
struct e1000_hw {TYPE_6__ phy; struct e1000_mac_info mac; TYPE_5__ dev_spec; TYPE_3__* adapter; } ;
typedef scalar_t__ s32 ;
struct TYPE_10__ {TYPE_2__* pdev; } ;
struct TYPE_9__ {scalar_t__ device; } ;


 scalar_t__ E1000_DEV_ID_PCH_I218_LM3 ;
 scalar_t__ E1000_DEV_ID_PCH_I218_V3 ;
 scalar_t__ E1000_DEV_ID_PCH_LPTLP_I218_LM ;
 scalar_t__ E1000_DEV_ID_PCH_LPTLP_I218_V ;
 scalar_t__ E1000_ERR_CONFIG ;
 int E1000_STATUS_FD ;
 int E1000_STATUS_SPEED_MASK ;
 int E1000_TIPG_IPGT_MASK ;
 int HV_KMRN_FIFO_CTRLSTA ;
 int HV_KMRN_FIFO_CTRLSTA_PREAMBLE_MASK ;
 int HV_KMRN_FIFO_CTRLSTA_PREAMBLE_SHIFT ;
 int I82579_RX_CONFIG ;
 int STATUS ;
 int TIPG ;
 scalar_t__ e1000_k1_gig_workaround_hv (struct e1000_hw*,int) ;
 scalar_t__ e1000_k1_workaround_lpt_lp (struct e1000_hw*,int) ;
 scalar_t__ e1000_k1_workaround_lv (struct e1000_hw*) ;
 scalar_t__ e1000_link_stall_workaround_hv (struct e1000_hw*) ;

 int e1000_pch_lpt ;

 int e1000_phy_82578 ;
 scalar_t__ e1000_platform_pm_pch_lpt (struct e1000_hw*,int) ;
 scalar_t__ e1000_set_eee_pchlan (struct e1000_hw*) ;
 scalar_t__ e1000_write_emi_reg_locked (struct e1000_hw*,int ,int ) ;
 int e1000e_check_downshift (struct e1000_hw*) ;
 scalar_t__ e1000e_config_fc_after_link_up (struct e1000_hw*) ;
 scalar_t__ e1000e_phy_has_link_generic (struct e1000_hw*,int,int ,int*) ;
 int e1e_rphy (struct e1000_hw*,int ,int*) ;
 int e1e_wphy (struct e1000_hw*,int ,int) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val;
 bool link;
 u16 phy_reg;






 if (!mac->get_link_status)
  return 0;





 ret_val = e1000e_phy_has_link_generic(hw, 1, 0, &link);
 if (ret_val)
  return ret_val;

 if (hw->mac.type == 128) {
  ret_val = e1000_k1_gig_workaround_hv(hw, link);
  if (ret_val)
   return ret_val;
 }





 if ((hw->mac.type == 129) && link) {
  u32 reg;
  reg = er32(STATUS);
  if (!(reg & (E1000_STATUS_FD | E1000_STATUS_SPEED_MASK))) {
   reg = er32(TIPG);
   reg &= ~E1000_TIPG_IPGT_MASK;
   reg |= 0xFF;
   ew32(TIPG, reg);


   ret_val = hw->phy.ops.acquire(hw);
   if (ret_val)
    return ret_val;

   ret_val =
       e1000_write_emi_reg_locked(hw, I82579_RX_CONFIG, 0);

   hw->phy.ops.release(hw);

   if (ret_val)
    return ret_val;
  }
 }


 if ((hw->adapter->pdev->device == E1000_DEV_ID_PCH_LPTLP_I218_LM) ||
     (hw->adapter->pdev->device == E1000_DEV_ID_PCH_LPTLP_I218_V) ||
     (hw->adapter->pdev->device == E1000_DEV_ID_PCH_I218_LM3) ||
     (hw->adapter->pdev->device == E1000_DEV_ID_PCH_I218_V3)) {
  ret_val = e1000_k1_workaround_lpt_lp(hw, link);
  if (ret_val)
   return ret_val;
 }

 if (hw->mac.type == e1000_pch_lpt) {



  ret_val = e1000_platform_pm_pch_lpt(hw, link);
  if (ret_val)
   return ret_val;
 }


 hw->dev_spec.ich8lan.eee_lp_ability = 0;

 if (!link)
  return 0;

 mac->get_link_status = 0;

 switch (hw->mac.type) {
 case 129:
  ret_val = e1000_k1_workaround_lv(hw);
  if (ret_val)
   return ret_val;

 case 128:
  if (hw->phy.type == e1000_phy_82578) {
   ret_val = e1000_link_stall_workaround_hv(hw);
   if (ret_val)
    return ret_val;
  }






  e1e_rphy(hw, HV_KMRN_FIFO_CTRLSTA, &phy_reg);
  phy_reg &= ~HV_KMRN_FIFO_CTRLSTA_PREAMBLE_MASK;

  if ((er32(STATUS) & E1000_STATUS_FD) != E1000_STATUS_FD)
   phy_reg |= (1 << HV_KMRN_FIFO_CTRLSTA_PREAMBLE_SHIFT);

  e1e_wphy(hw, HV_KMRN_FIFO_CTRLSTA, phy_reg);
  break;
 default:
  break;
 }




 e1000e_check_downshift(hw);


 ret_val = e1000_set_eee_pchlan(hw);
 if (ret_val)
  return ret_val;




 if (!mac->autoneg)
  return -E1000_ERR_CONFIG;





 mac->ops.config_collision_dist(hw);






 ret_val = e1000e_config_fc_after_link_up(hw);
 if (ret_val)
  e_dbg("Error configuring flow control\n");

 return ret_val;
}
