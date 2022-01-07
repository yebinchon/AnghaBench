
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct atl1_hw {int media_type; scalar_t__ hw_addr; struct atl1_adapter* back; } ;
struct atl1_adapter {struct pci_dev* pdev; } ;
typedef scalar_t__ s32 ;


 int MDIO_BUSY ;
 int MDIO_START ;
 int MEDIA_TYPE_1000M_FULL ;



 int MEDIA_TYPE_AUTO_SENSOR ;
 int MII_BMCR ;
 int MII_CR_AUTO_NEG_EN ;
 int MII_CR_FULL_DUPLEX ;
 int MII_CR_RESET ;
 int MII_CR_SPEED_10 ;
 int MII_CR_SPEED_100 ;
 scalar_t__ REG_MDIO_CTRL ;
 scalar_t__ atl1_write_phy_reg (struct atl1_hw*,int ,int) ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*) ;
 int ioread32 (scalar_t__) ;
 int msleep (int) ;
 scalar_t__ netif_msg_hw (struct atl1_adapter*) ;

__attribute__((used)) static s32 atl1_phy_reset(struct atl1_hw *hw)
{
 struct pci_dev *pdev = hw->back->pdev;
 struct atl1_adapter *adapter = hw->back;
 s32 ret_val;
 u16 phy_data;

 if (hw->media_type == MEDIA_TYPE_AUTO_SENSOR ||
     hw->media_type == MEDIA_TYPE_1000M_FULL)
  phy_data = MII_CR_RESET | MII_CR_AUTO_NEG_EN;
 else {
  switch (hw->media_type) {
  case 130:
   phy_data =
       MII_CR_FULL_DUPLEX | MII_CR_SPEED_100 |
       MII_CR_RESET;
   break;
  case 129:
   phy_data = MII_CR_SPEED_100 | MII_CR_RESET;
   break;
  case 128:
   phy_data =
       MII_CR_FULL_DUPLEX | MII_CR_SPEED_10 | MII_CR_RESET;
   break;
  default:

   phy_data = MII_CR_SPEED_10 | MII_CR_RESET;
   break;
  }
 }

 ret_val = atl1_write_phy_reg(hw, MII_BMCR, phy_data);
 if (ret_val) {
  u32 val;
  int i;

  if (netif_msg_hw(adapter))
   dev_dbg(&pdev->dev, "pcie phy link down\n");

  for (i = 0; i < 25; i++) {
   msleep(1);
   val = ioread32(hw->hw_addr + REG_MDIO_CTRL);
   if (!(val & (MDIO_START | MDIO_BUSY)))
    break;
  }

  if ((val & (MDIO_START | MDIO_BUSY)) != 0) {
   if (netif_msg_hw(adapter))
    dev_warn(&pdev->dev,
     "pcie link down at least 25ms\n");
   return ret_val;
  }
 }
 return 0;
}
