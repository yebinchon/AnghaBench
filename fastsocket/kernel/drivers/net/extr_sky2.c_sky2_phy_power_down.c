
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sky2_hw {int flags; scalar_t__ chip_id; } ;


 int B2_TST_CTRL1 ;
 scalar_t__ CHIP_ID_YUKON_EC ;
 scalar_t__ CHIP_ID_YUKON_EC_U ;
 int GMAC_CTRL ;
 int GMC_RST_CLR ;
 int GM_GPCR_AU_DUP_DIS ;
 int GM_GPCR_AU_FCT_DIS ;
 int GM_GPCR_AU_SPD_DIS ;
 int GM_GPCR_FL_PASS ;
 int GM_GPCR_SPEED_100 ;
 int GM_GP_CTRL ;
 int GPC_RST_CLR ;
 int GPHY_CTRL ;
 int PCI_DEV_REG1 ;
 int PHY_CT_PDOWN ;
 int PHY_MARV_CTRL ;
 int PHY_MARV_EXT_ADR ;
 int PHY_MARV_PHY_CTRL ;
 int PHY_M_MAC_GMIF_PUP ;
 int PHY_M_PC_POW_D_ENA ;
 int SKY2_HW_NEWER_PHY ;
 int SK_REG (unsigned int,int ) ;
 int TST_CFG_WRITE_OFF ;
 int TST_CFG_WRITE_ON ;
 int gm_phy_read (struct sky2_hw*,unsigned int,int ) ;
 int gm_phy_write (struct sky2_hw*,unsigned int,int ,int) ;
 int gma_write16 (struct sky2_hw*,unsigned int,int ,int) ;
 int * phy_power ;
 int sky2_pci_read32 (struct sky2_hw*,int ) ;
 int sky2_pci_write32 (struct sky2_hw*,int ,int ) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static void sky2_phy_power_down(struct sky2_hw *hw, unsigned port)
{
 u32 reg1;
 u16 ctrl;


 sky2_write8(hw, SK_REG(port, GPHY_CTRL), GPC_RST_CLR);


 sky2_write8(hw, SK_REG(port, GMAC_CTRL), GMC_RST_CLR);

 if (hw->flags & SKY2_HW_NEWER_PHY) {

  gm_phy_write(hw, port, PHY_MARV_EXT_ADR, 2);

  ctrl = gm_phy_read(hw, port, PHY_MARV_PHY_CTRL);

  ctrl &= ~PHY_M_MAC_GMIF_PUP;
  gm_phy_write(hw, port, PHY_MARV_PHY_CTRL, ctrl);


  gm_phy_write(hw, port, PHY_MARV_EXT_ADR, 0);
 }


 gma_write16(hw, port, GM_GP_CTRL,
      GM_GPCR_FL_PASS | GM_GPCR_SPEED_100 |
      GM_GPCR_AU_DUP_DIS | GM_GPCR_AU_FCT_DIS |
      GM_GPCR_AU_SPD_DIS);

 if (hw->chip_id != CHIP_ID_YUKON_EC) {
  if (hw->chip_id == CHIP_ID_YUKON_EC_U) {

   gm_phy_write(hw, port, PHY_MARV_EXT_ADR, 2);

   ctrl = gm_phy_read(hw, port, PHY_MARV_PHY_CTRL);

   ctrl |= PHY_M_PC_POW_D_ENA;
   gm_phy_write(hw, port, PHY_MARV_PHY_CTRL, ctrl);


   gm_phy_write(hw, port, PHY_MARV_EXT_ADR, 0);
  }


  gm_phy_write(hw, port, PHY_MARV_CTRL, PHY_CT_PDOWN);
 }

 sky2_write8(hw, B2_TST_CTRL1, TST_CFG_WRITE_ON);
 reg1 = sky2_pci_read32(hw, PCI_DEV_REG1);
 reg1 |= phy_power[port];
 sky2_pci_write32(hw, PCI_DEV_REG1, reg1);
 sky2_write8(hw, B2_TST_CTRL1, TST_CFG_WRITE_OFF);
}
