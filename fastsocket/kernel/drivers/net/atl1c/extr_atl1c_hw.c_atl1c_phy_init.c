
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;
struct atl1c_hw {int media_type; int phy_configured; int phy_id2; int phy_id1; scalar_t__ adapter; } ;
struct atl1c_adapter {struct pci_dev* pdev; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_FULLDPLX ;
 int BMCR_RESET ;
 int BMCR_SPEED100 ;





 int MII_BMCR ;
 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 int atl1c_phy_setup_adv (struct atl1c_hw*) ;
 scalar_t__ atl1c_read_phy_reg (struct atl1c_hw*,int ,int *) ;
 int atl1c_write_phy_reg (struct atl1c_hw*,int ,int) ;
 int dev_err (int *,char*,...) ;
 int netif_msg_link (struct atl1c_adapter*) ;

int atl1c_phy_init(struct atl1c_hw *hw)
{
 struct atl1c_adapter *adapter = (struct atl1c_adapter *)hw->adapter;
 struct pci_dev *pdev = adapter->pdev;
 int ret_val;
 u16 mii_bmcr_data = BMCR_RESET;

 if ((atl1c_read_phy_reg(hw, MII_PHYSID1, &hw->phy_id1) != 0) ||
  (atl1c_read_phy_reg(hw, MII_PHYSID2, &hw->phy_id2) != 0)) {
  dev_err(&pdev->dev, "Error get phy ID\n");
  return -1;
 }
 switch (hw->media_type) {
 case 128:
  ret_val = atl1c_phy_setup_adv(hw);
  if (ret_val) {
   if (netif_msg_link(adapter))
    dev_err(&pdev->dev,
     "Error Setting up Auto-Negotiation\n");
   return ret_val;
  }
  mii_bmcr_data |= BMCR_ANENABLE | BMCR_ANRESTART;
  break;
 case 132:
  mii_bmcr_data |= BMCR_SPEED100 | BMCR_FULLDPLX;
  break;
 case 131:
  mii_bmcr_data |= BMCR_SPEED100;
  break;
 case 130:
  mii_bmcr_data |= BMCR_FULLDPLX;
  break;
 case 129:
  break;
 default:
  if (netif_msg_link(adapter))
   dev_err(&pdev->dev, "Wrong Media type %d\n",
    hw->media_type);
  return -1;
  break;
 }

 ret_val = atl1c_write_phy_reg(hw, MII_BMCR, mii_bmcr_data);
 if (ret_val)
  return ret_val;
 hw->phy_configured = 1;

 return 0;
}
