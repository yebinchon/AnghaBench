
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int mac_type; int tbi_compatibility_on; int pci_cmd_word; } ;
typedef int s32 ;


 int CTRL ;
 int CTRL_DUP ;
 int CTRL_EXT ;
 int E1000_CTRL_EXT_EE_RST ;
 int E1000_CTRL_PHY_RST ;
 int E1000_CTRL_RST ;
 int E1000_MANC_ARP_EN ;
 int E1000_SUCCESS ;
 int E1000_TCTL_PSP ;
 int E1000_WRITE_FLUSH () ;
 int E1000_WRITE_REG_IO (struct e1000_hw*,int ,int) ;
 int ICR ;
 int IGP_ACTIVITY_LED_ENABLE ;
 int IGP_ACTIVITY_LED_MASK ;
 int IGP_LED3_MODE ;
 int IMC ;
 int LEDCTL ;
 int MANC ;
 int PCI_COMMAND_INVALIDATE ;
 int RCTL ;
 int TCTL ;
 int e1000_get_auto_rd_done (struct e1000_hw*) ;
 int e1000_pci_clear_mwi (struct e1000_hw*) ;
 int e1000_pci_set_mwi (struct e1000_hw*) ;
 int e1000_phy_init_script (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;
 int udelay (int) ;

s32 e1000_reset_hw(struct e1000_hw *hw)
{
 u32 ctrl;
 u32 ctrl_ext;
 u32 icr;
 u32 manc;
 u32 led_ctrl;
 s32 ret_val;

 e_dbg("e1000_reset_hw");


 if (hw->mac_type == 138) {
  e_dbg("Disabling MWI on 82542 rev 2.0\n");
  e1000_pci_clear_mwi(hw);
 }


 e_dbg("Masking off all interrupts\n");
 ew32(IMC, 0xffffffff);





 ew32(RCTL, 0);
 ew32(TCTL, E1000_TCTL_PSP);
 E1000_WRITE_FLUSH();


 hw->tbi_compatibility_on = 0;




 msleep(10);

 ctrl = er32(CTRL);


 if ((hw->mac_type == 140) || (hw->mac_type == 130)) {
  ew32(CTRL, (ctrl | E1000_CTRL_PHY_RST));
  E1000_WRITE_FLUSH();
  msleep(5);
 }






 e_dbg("Issuing a global reset to MAC\n");

 switch (hw->mac_type) {
 case 135:
 case 141:
 case 134:
 case 132:
 case 140:
 case 139:


  E1000_WRITE_REG_IO(hw, CTRL, (ctrl | E1000_CTRL_RST));
  break;
 case 133:
 case 131:

  ew32(CTRL_DUP, (ctrl | E1000_CTRL_RST));
  break;
 case 128:
 default:
  ew32(CTRL, (ctrl | E1000_CTRL_RST));
  break;
 }





 switch (hw->mac_type) {
 case 138:
 case 137:
 case 136:
 case 135:

  udelay(10);
  ctrl_ext = er32(CTRL_EXT);
  ctrl_ext |= E1000_CTRL_EXT_EE_RST;
  ew32(CTRL_EXT, ctrl_ext);
  E1000_WRITE_FLUSH();

  msleep(2);
  break;
 case 140:
 case 139:
 case 130:
 case 129:

  msleep(20);
  break;
 default:

  ret_val = e1000_get_auto_rd_done(hw);
  if (ret_val)
   return ret_val;
  break;
 }


 if (hw->mac_type >= 141) {
  manc = er32(MANC);
  manc &= ~(E1000_MANC_ARP_EN);
  ew32(MANC, manc);
 }

 if ((hw->mac_type == 140) || (hw->mac_type == 130)) {
  e1000_phy_init_script(hw);


  led_ctrl = er32(LEDCTL);
  led_ctrl &= IGP_ACTIVITY_LED_MASK;
  led_ctrl |= (IGP_ACTIVITY_LED_ENABLE | IGP_LED3_MODE);
  ew32(LEDCTL, led_ctrl);
 }


 e_dbg("Masking off all interrupts\n");
 ew32(IMC, 0xffffffff);


 icr = er32(ICR);


 if (hw->mac_type == 138) {
  if (hw->pci_cmd_word & PCI_COMMAND_INVALIDATE)
   e1000_pci_set_mwi(hw);
 }

 return E1000_SUCCESS;
}
