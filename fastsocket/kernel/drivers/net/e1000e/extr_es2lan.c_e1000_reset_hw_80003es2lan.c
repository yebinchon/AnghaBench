
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int E1000_CTRL_RST ;
 int E1000_KMRNCTRLSTA_IBIST_DISABLE ;
 int E1000_KMRNCTRLSTA_INBAND_PARAM ;
 int E1000_TCTL_PSP ;
 int ICR ;
 int IMC ;
 int RCTL ;
 int TCTL ;
 scalar_t__ e1000_acquire_phy_80003es2lan (struct e1000_hw*) ;
 scalar_t__ e1000_check_alt_mac_addr_generic (struct e1000_hw*) ;
 int e1000_read_kmrn_reg_80003es2lan (struct e1000_hw*,int ,int *) ;
 int e1000_release_phy_80003es2lan (struct e1000_hw*) ;
 int e1000_write_kmrn_reg_80003es2lan (struct e1000_hw*,int ,int ) ;
 scalar_t__ e1000e_disable_pcie_master (struct e1000_hw*) ;
 scalar_t__ e1000e_get_auto_rd_done (struct e1000_hw*) ;
 int e1e_flush () ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_reset_hw_80003es2lan(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;
 u16 kum_reg_data;




 ret_val = e1000e_disable_pcie_master(hw);
 if (ret_val)
  e_dbg("PCI-E Master disable polling has failed.\n");

 e_dbg("Masking off all interrupts\n");
 ew32(IMC, 0xffffffff);

 ew32(RCTL, 0);
 ew32(TCTL, E1000_TCTL_PSP);
 e1e_flush();

 usleep_range(10000, 20000);

 ctrl = er32(CTRL);

 ret_val = e1000_acquire_phy_80003es2lan(hw);
 if (ret_val)
  return ret_val;

 e_dbg("Issuing a global reset to MAC\n");
 ew32(CTRL, ctrl | E1000_CTRL_RST);
 e1000_release_phy_80003es2lan(hw);


 e1000_read_kmrn_reg_80003es2lan(hw, E1000_KMRNCTRLSTA_INBAND_PARAM,
     &kum_reg_data);
 kum_reg_data |= E1000_KMRNCTRLSTA_IBIST_DISABLE;
 e1000_write_kmrn_reg_80003es2lan(hw, E1000_KMRNCTRLSTA_INBAND_PARAM,
      kum_reg_data);

 ret_val = e1000e_get_auto_rd_done(hw);
 if (ret_val)

  return ret_val;


 ew32(IMC, 0xffffffff);
 er32(ICR);

 return e1000_check_alt_mac_addr_generic(hw);
}
