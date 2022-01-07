
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_hw {scalar_t__ subsystem_vendor_id; scalar_t__ phy_type; } ;


 int ASSERT (int) ;
 int CTRL0 ;
 int CTRL1 ;
 int IXGB_CTRL0_RST ;
 int IXGB_CTRL0_SDP0 ;
 int IXGB_CTRL0_SDP0_DIR ;
 int IXGB_CTRL0_SDP1_DIR ;
 int IXGB_CTRL0_SDP2 ;
 int IXGB_CTRL0_SDP2_DIR ;
 int IXGB_CTRL0_SDP3 ;
 int IXGB_CTRL0_SDP3_DIR ;
 int IXGB_CTRL1_GPI0_EN ;
 int IXGB_CTRL1_SDP6 ;
 int IXGB_CTRL1_SDP6_DIR ;
 int IXGB_CTRL1_SDP7 ;
 int IXGB_CTRL1_SDP7_DIR ;
 int IXGB_DELAY_AFTER_RESET ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int IXGB_WRITE_REG (struct ixgb_hw*,int ,int) ;
 int IXGB_WRITE_REG_IO (struct ixgb_hw*,int ,int) ;
 scalar_t__ SUN_SUBVENDOR_ID ;
 int ixgb_optics_reset (struct ixgb_hw*) ;
 int ixgb_optics_reset_bcm (struct ixgb_hw*) ;
 scalar_t__ ixgb_phy_type_txn17401 ;
 int msleep (int ) ;

__attribute__((used)) static u32 ixgb_mac_reset(struct ixgb_hw *hw)
{
 u32 ctrl_reg;

 ctrl_reg = IXGB_CTRL0_RST |
    IXGB_CTRL0_SDP3_DIR |
    IXGB_CTRL0_SDP2_DIR |
    IXGB_CTRL0_SDP1_DIR |
    IXGB_CTRL0_SDP0_DIR |
    IXGB_CTRL0_SDP3 |
    IXGB_CTRL0_SDP2 |
    IXGB_CTRL0_SDP0;





 IXGB_WRITE_REG(hw, CTRL0, ctrl_reg);



 msleep(IXGB_DELAY_AFTER_RESET);
 ctrl_reg = IXGB_READ_REG(hw, CTRL0);





 if (hw->subsystem_vendor_id == SUN_SUBVENDOR_ID) {
  ctrl_reg =
      IXGB_CTRL1_GPI0_EN |
      IXGB_CTRL1_SDP6_DIR |
      IXGB_CTRL1_SDP7_DIR |
      IXGB_CTRL1_SDP6 |
      IXGB_CTRL1_SDP7;
  IXGB_WRITE_REG(hw, CTRL1, ctrl_reg);
  ixgb_optics_reset_bcm(hw);
 }

 if (hw->phy_type == ixgb_phy_type_txn17401)
  ixgb_optics_reset(hw);

 return ctrl_reg;
}
