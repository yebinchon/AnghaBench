
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct atl1c_hw {int phy_configured; scalar_t__ nic_type; scalar_t__ revision_id; scalar_t__ adapter; } ;
struct atl1c_adapter {scalar_t__ link_speed; scalar_t__ link_duplex; struct pci_dev* pdev; } ;


 int AT_READ_REG (struct atl1c_hw*,int ,int*) ;
 int AT_WRITE_REG (struct atl1c_hw*,int ,int) ;
 int AT_WUFC_LNKC ;
 int AT_WUFC_MAG ;
 int FIELD_SETX (int,int ,int) ;
 scalar_t__ FULL_DUPLEX ;
 int GPHY_CTRL_CLS ;
 int GPHY_CTRL_EXT_RESET ;
 int GPHY_CTRL_HIB_EN ;
 int GPHY_CTRL_HIB_PULSE ;
 int GPHY_CTRL_PHY_IDDQ ;
 int GPHY_CTRL_PWDOWN_HW ;
 int GPHY_CTRL_SEL_ANA_RST ;
 int IER_LINK_UP ;
 scalar_t__ L2CB_V11 ;
 int MAC_CTRL_BC_EN ;
 int MAC_CTRL_DUPLX ;
 int MAC_CTRL_RX_EN ;
 int MAC_CTRL_SPEED ;
 int MAC_CTRL_SPEED_1000 ;
 int MAC_CTRL_SPEED_10_100 ;
 int MAC_CTRL_TX_EN ;
 int MASTER_CTRL_CLK_SEL_DIS ;
 int MII_IER ;
 int MII_ISR ;
 int REG_GPHY_CTRL ;
 int REG_MAC_CTRL ;
 int REG_MASTER_CTRL ;
 int REG_WOL_CTRL ;
 scalar_t__ SPEED_1000 ;
 int WOL_LINK_CHG_EN ;
 int WOL_LINK_CHG_PME_EN ;
 int WOL_MAGIC_EN ;
 int WOL_MAGIC_PME_EN ;
 int WOL_PATTERN_EN ;
 int WOL_PATTERN_PME_EN ;
 scalar_t__ athr_l2c_b ;
 int atl1c_driver_name ;
 int atl1c_read_phy_reg (struct atl1c_hw*,int ,int *) ;
 scalar_t__ atl1c_write_phy_reg (struct atl1c_hw*,int ,int ) ;
 int dev_dbg (int *,char*,int ,...) ;

int atl1c_power_saving(struct atl1c_hw *hw, u32 wufc)
{
 struct atl1c_adapter *adapter = (struct atl1c_adapter *)hw->adapter;
 struct pci_dev *pdev = adapter->pdev;
 u32 master_ctrl, mac_ctrl, phy_ctrl;
 u32 wol_ctrl, speed;
 u16 phy_data;

 wol_ctrl = 0;
 speed = adapter->link_speed == SPEED_1000 ?
  MAC_CTRL_SPEED_1000 : MAC_CTRL_SPEED_10_100;

 AT_READ_REG(hw, REG_MASTER_CTRL, &master_ctrl);
 AT_READ_REG(hw, REG_MAC_CTRL, &mac_ctrl);
 AT_READ_REG(hw, REG_GPHY_CTRL, &phy_ctrl);

 master_ctrl &= ~MASTER_CTRL_CLK_SEL_DIS;
 mac_ctrl = FIELD_SETX(mac_ctrl, MAC_CTRL_SPEED, speed);
 mac_ctrl &= ~(MAC_CTRL_DUPLX | MAC_CTRL_RX_EN | MAC_CTRL_TX_EN);
 if (adapter->link_duplex == FULL_DUPLEX)
  mac_ctrl |= MAC_CTRL_DUPLX;
 phy_ctrl &= ~(GPHY_CTRL_EXT_RESET | GPHY_CTRL_CLS);
 phy_ctrl |= GPHY_CTRL_SEL_ANA_RST | GPHY_CTRL_HIB_PULSE |
  GPHY_CTRL_HIB_EN;
 if (!wufc) {
  master_ctrl |= MASTER_CTRL_CLK_SEL_DIS;
  phy_ctrl |= GPHY_CTRL_PHY_IDDQ | GPHY_CTRL_PWDOWN_HW;
  AT_WRITE_REG(hw, REG_MASTER_CTRL, master_ctrl);
  AT_WRITE_REG(hw, REG_MAC_CTRL, mac_ctrl);
  AT_WRITE_REG(hw, REG_GPHY_CTRL, phy_ctrl);
  AT_WRITE_REG(hw, REG_WOL_CTRL, 0);
  hw->phy_configured = 0;
  return 0;
 }
 phy_ctrl |= GPHY_CTRL_EXT_RESET;
 if (wufc & AT_WUFC_MAG) {
  mac_ctrl |= MAC_CTRL_RX_EN | MAC_CTRL_BC_EN;
  wol_ctrl |= WOL_MAGIC_EN | WOL_MAGIC_PME_EN;
  if (hw->nic_type == athr_l2c_b && hw->revision_id == L2CB_V11)
   wol_ctrl |= WOL_PATTERN_EN | WOL_PATTERN_PME_EN;
 }
 if (wufc & AT_WUFC_LNKC) {
  wol_ctrl |= WOL_LINK_CHG_EN | WOL_LINK_CHG_PME_EN;
  if (atl1c_write_phy_reg(hw, MII_IER, IER_LINK_UP) != 0) {
   dev_dbg(&pdev->dev, "%s: write phy MII_IER faild.\n",
    atl1c_driver_name);
  }
 }

 atl1c_read_phy_reg(hw, MII_ISR, &phy_data);

 dev_dbg(&pdev->dev, "%s: suspend MAC=%x,MASTER=%x,PHY=0x%x,WOL=%x\n",
  atl1c_driver_name, mac_ctrl, master_ctrl, phy_ctrl, wol_ctrl);
 AT_WRITE_REG(hw, REG_MASTER_CTRL, master_ctrl);
 AT_WRITE_REG(hw, REG_MAC_CTRL, mac_ctrl);
 AT_WRITE_REG(hw, REG_GPHY_CTRL, phy_ctrl);
 AT_WRITE_REG(hw, REG_WOL_CTRL, wol_ctrl);

 return 0;
}
