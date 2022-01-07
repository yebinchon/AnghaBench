
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int E1000_CTRL ;
 int E1000_CTRL_RST ;
 int E1000_EECD ;
 int E1000_EECD_PRES ;
 int E1000_ICR ;
 int E1000_IMC ;
 int E1000_RCTL ;
 int E1000_TCTL ;
 int E1000_TCTL_PSP ;
 int hw_dbg (char*) ;
 scalar_t__ igb_check_alt_mac_addr (struct e1000_hw*) ;
 scalar_t__ igb_disable_pcie_master (struct e1000_hw*) ;
 scalar_t__ igb_get_auto_rd_done (struct e1000_hw*) ;
 int igb_reset_init_script_82575 (struct e1000_hw*) ;
 scalar_t__ igb_set_pcie_completion_timeout (struct e1000_hw*) ;
 int msleep (int) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static s32 igb_reset_hw_82575(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;




 ret_val = igb_disable_pcie_master(hw);
 if (ret_val)
  hw_dbg("PCI-E Master disable polling has failed.\n");


 ret_val = igb_set_pcie_completion_timeout(hw);
 if (ret_val) {
  hw_dbg("PCI-E Set completion timeout has failed.\n");
 }

 hw_dbg("Masking off all interrupts\n");
 wr32(E1000_IMC, 0xffffffff);

 wr32(E1000_RCTL, 0);
 wr32(E1000_TCTL, E1000_TCTL_PSP);
 wrfl();

 msleep(10);

 ctrl = rd32(E1000_CTRL);

 hw_dbg("Issuing a global reset to MAC\n");
 wr32(E1000_CTRL, ctrl | E1000_CTRL_RST);

 ret_val = igb_get_auto_rd_done(hw);
 if (ret_val) {




  hw_dbg("Auto Read Done did not complete\n");
 }


 if ((rd32(E1000_EECD) & E1000_EECD_PRES) == 0)
  igb_reset_init_script_82575(hw);


 wr32(E1000_IMC, 0xffffffff);
 rd32(E1000_ICR);


 ret_val = igb_check_alt_mac_addr(hw);

 return ret_val;
}
