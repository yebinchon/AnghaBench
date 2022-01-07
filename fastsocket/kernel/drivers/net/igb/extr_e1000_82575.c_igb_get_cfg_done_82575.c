
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {int func; } ;
struct e1000_hw {TYPE_1__ phy; TYPE_2__ bus; } ;
typedef scalar_t__ s32 ;


 int E1000_EECD ;
 int E1000_EECD_PRES ;
 int E1000_EEMNGCTL ;
 int E1000_FUNC_2 ;
 int E1000_FUNC_3 ;
 int E1000_NVM_CFG_DONE_PORT_0 ;
 int E1000_NVM_CFG_DONE_PORT_1 ;
 int E1000_NVM_CFG_DONE_PORT_2 ;
 int E1000_NVM_CFG_DONE_PORT_3 ;
 scalar_t__ PHY_CFG_TIMEOUT ;
 scalar_t__ e1000_phy_igp_3 ;
 int hw_dbg (char*) ;
 int igb_phy_init_script_igp3 (struct e1000_hw*) ;
 int msleep (int) ;
 int rd32 (int ) ;

__attribute__((used)) static s32 igb_get_cfg_done_82575(struct e1000_hw *hw)
{
 s32 timeout = PHY_CFG_TIMEOUT;
 s32 ret_val = 0;
 u32 mask = E1000_NVM_CFG_DONE_PORT_0;

 if (hw->bus.func == 1)
  mask = E1000_NVM_CFG_DONE_PORT_1;
 else if (hw->bus.func == E1000_FUNC_2)
  mask = E1000_NVM_CFG_DONE_PORT_2;
 else if (hw->bus.func == E1000_FUNC_3)
  mask = E1000_NVM_CFG_DONE_PORT_3;

 while (timeout) {
  if (rd32(E1000_EEMNGCTL) & mask)
   break;
  msleep(1);
  timeout--;
 }
 if (!timeout)
  hw_dbg("MNG configuration cycle has not completed.\n");


 if (((rd32(E1000_EECD) & E1000_EECD_PRES) == 0) &&
     (hw->phy.type == e1000_phy_igp_3))
  igb_phy_init_script_igp3(hw);

 return ret_val;
}
