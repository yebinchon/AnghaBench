
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int type; int serdes_link_state; } ;
struct TYPE_5__ {scalar_t__ media_type; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_2__ phy; TYPE_1__ nvm; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int CTRL_EXT ;
 int E1000_CTRL_EXT_EE_RST ;
 int E1000_CTRL_RST ;
 int E1000_EECD_GNT ;
 int E1000_EECD_REQ ;
 int E1000_TCTL_EN ;
 int EECD ;
 int ICR ;
 int IMC ;
 int RCTL ;
 int TCTL ;





 scalar_t__ e1000_check_alt_mac_addr_generic (struct e1000_hw*) ;
 scalar_t__ e1000_get_hw_semaphore_82573 (struct e1000_hw*) ;
 scalar_t__ e1000_get_hw_semaphore_82574 (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_internal_serdes ;
 scalar_t__ e1000_nvm_flash_hw ;
 int e1000_put_hw_semaphore_82574 (struct e1000_hw*) ;
 int e1000_serdes_link_down ;
 scalar_t__ e1000e_disable_pcie_master (struct e1000_hw*) ;
 scalar_t__ e1000e_get_auto_rd_done (struct e1000_hw*) ;
 int e1000e_set_laa_state_82571 (struct e1000_hw*,int) ;
 int e1e_flush () ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_reset_hw_82571(struct e1000_hw *hw)
{
 u32 ctrl, ctrl_ext, eecd, tctl;
 s32 ret_val;




 ret_val = e1000e_disable_pcie_master(hw);
 if (ret_val)
  e_dbg("PCI-E Master disable polling has failed.\n");

 e_dbg("Masking off all interrupts\n");
 ew32(IMC, 0xffffffff);

 ew32(RCTL, 0);
 tctl = er32(TCTL);
 tctl &= ~E1000_TCTL_EN;
 ew32(TCTL, tctl);
 e1e_flush();

 usleep_range(10000, 20000);




 switch (hw->mac.type) {
 case 130:
  ret_val = e1000_get_hw_semaphore_82573(hw);
  break;
 case 129:
 case 128:
  ret_val = e1000_get_hw_semaphore_82574(hw);
  break;
 default:
  break;
 }

 ctrl = er32(CTRL);

 e_dbg("Issuing a global reset to MAC\n");
 ew32(CTRL, ctrl | E1000_CTRL_RST);


 switch (hw->mac.type) {
 case 129:
 case 128:

  if (!ret_val)
   e1000_put_hw_semaphore_82574(hw);
  break;
 default:
  break;
 }

 if (hw->nvm.type == e1000_nvm_flash_hw) {
  usleep_range(10, 20);
  ctrl_ext = er32(CTRL_EXT);
  ctrl_ext |= E1000_CTRL_EXT_EE_RST;
  ew32(CTRL_EXT, ctrl_ext);
  e1e_flush();
 }

 ret_val = e1000e_get_auto_rd_done(hw);
 if (ret_val)

  return ret_val;






 switch (hw->mac.type) {
 case 132:
 case 131:



  eecd = er32(EECD);
  eecd &= ~(E1000_EECD_REQ | E1000_EECD_GNT);
  ew32(EECD, eecd);
  break;
 case 130:
 case 129:
 case 128:
  msleep(25);
  break;
 default:
  break;
 }


 ew32(IMC, 0xffffffff);
 er32(ICR);

 if (hw->mac.type == 132) {

  ret_val = e1000_check_alt_mac_addr_generic(hw);
  if (ret_val)
   return ret_val;

  e1000e_set_laa_state_82571(hw, 1);
 }


 if (hw->phy.media_type == e1000_media_type_internal_serdes)
  hw->mac.serdes_link_state = e1000_serdes_link_down;

 return 0;
}
