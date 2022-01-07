
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {int type; } ;
struct TYPE_4__ {int (* release ) (struct e1000_hw*) ;int (* check_reset_block ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int CTRL_EXT ;
 int E1000_CTRL_EXT_FORCE_SMBUS ;
 int E1000_CTRL_EXT_LPCD ;
 int E1000_CTRL_LANPHYPC_OVERRIDE ;
 int E1000_CTRL_LANPHYPC_VALUE ;
 scalar_t__ E1000_ERR_PHY ;
 int E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC ;
 int E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK ;
 int E1000_ICH_FWSM_FW_VALID ;
 int FEXTNVM3 ;
 int FWSM ;
 int e1000_gate_hw_phy_config_ich8lan (struct e1000_hw*,int) ;



 int e1000_phy_is_accessible_pchlan (struct e1000_hw*) ;
 scalar_t__ e1000e_phy_hw_reset_generic (struct e1000_hw*) ;
 int e1e_flush () ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
{
 u32 mac_reg, fwsm = er32(FWSM);
 s32 ret_val;




 e1000_gate_hw_phy_config_ich8lan(hw, 1);

 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val) {
  e_dbg("Failed to initialize PHY flow\n");
  goto out;
 }





 switch (hw->mac.type) {
 case 129:
  if (e1000_phy_is_accessible_pchlan(hw))
   break;




  mac_reg = er32(CTRL_EXT);
  mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
  ew32(CTRL_EXT, mac_reg);





  msleep(50);


 case 130:
  if (e1000_phy_is_accessible_pchlan(hw))
   break;


 case 128:
  if ((hw->mac.type == 128) &&
      (fwsm & E1000_ICH_FWSM_FW_VALID))
   break;

  if (hw->phy.ops.check_reset_block(hw)) {
   e_dbg("Required LANPHYPC toggle blocked by ME\n");
   ret_val = -E1000_ERR_PHY;
   break;
  }

  e_dbg("Toggling LANPHYPC\n");


  mac_reg = er32(FEXTNVM3);
  mac_reg &= ~E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK;
  mac_reg |= E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC;
  ew32(FEXTNVM3, mac_reg);


  mac_reg = er32(CTRL);
  mac_reg |= E1000_CTRL_LANPHYPC_OVERRIDE;
  mac_reg &= ~E1000_CTRL_LANPHYPC_VALUE;
  ew32(CTRL, mac_reg);
  e1e_flush();
  usleep_range(10, 20);
  mac_reg &= ~E1000_CTRL_LANPHYPC_OVERRIDE;
  ew32(CTRL, mac_reg);
  e1e_flush();
  if (hw->mac.type < 129) {
   msleep(50);
  } else {
   u16 count = 20;
   do {
    usleep_range(5000, 10000);
   } while (!(er32(CTRL_EXT) &
       E1000_CTRL_EXT_LPCD) && count--);
   usleep_range(30000, 60000);
   if (e1000_phy_is_accessible_pchlan(hw))
    break;




   mac_reg = er32(CTRL_EXT);
   mac_reg &= ~E1000_CTRL_EXT_FORCE_SMBUS;
   ew32(CTRL_EXT, mac_reg);

   if (e1000_phy_is_accessible_pchlan(hw))
    break;

   ret_val = -E1000_ERR_PHY;
  }
  break;
 default:
  break;
 }

 hw->phy.ops.release(hw);
 if (!ret_val) {





  ret_val = e1000e_phy_hw_reset_generic(hw);
 }

out:

 if ((hw->mac.type == 130) &&
     !(fwsm & E1000_ICH_FWSM_FW_VALID)) {
  usleep_range(10000, 20000);
  e1000_gate_hw_phy_config_ich8lan(hw, 0);
 }

 return ret_val;
}
