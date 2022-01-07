
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct atl1e_hw {struct atl1e_adapter* adapter; } ;
struct atl1e_adapter {struct pci_dev* pdev; } ;


 int AT_READ_REG (struct atl1e_hw*,int ) ;
 int MDIO_BUSY ;
 int MDIO_START ;
 int MII_BMCR ;
 int MII_CR_AUTO_NEG_EN ;
 int MII_CR_RESET ;
 int MII_CR_RESTART_AUTO_NEG ;
 int REG_MDIO_CTRL ;
 int atl1e_write_phy_reg (struct atl1e_hw*,int ,int) ;
 int dev_err (int *,char*,...) ;
 int msleep (int) ;

int atl1e_phy_commit(struct atl1e_hw *hw)
{
 struct atl1e_adapter *adapter = hw->adapter;
 struct pci_dev *pdev = adapter->pdev;
 int ret_val;
 u16 phy_data;

 phy_data = MII_CR_RESET | MII_CR_AUTO_NEG_EN | MII_CR_RESTART_AUTO_NEG;

 ret_val = atl1e_write_phy_reg(hw, MII_BMCR, phy_data);
 if (ret_val) {
  u32 val;
  int i;



  for (i = 0; i < 25; i++) {
   msleep(1);
   val = AT_READ_REG(hw, REG_MDIO_CTRL);
   if (!(val & (MDIO_START | MDIO_BUSY)))
    break;
  }

  if (0 != (val & (MDIO_START | MDIO_BUSY))) {
   dev_err(&pdev->dev,
    "pcie linkdown at least for 25ms\n");
   return ret_val;
  }

  dev_err(&pdev->dev, "pcie linkup after %d ms\n", i);
 }
 return 0;
}
