
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;
struct atl1_hw {struct atl1_adapter* back; } ;
struct atl1_adapter {struct pci_dev* pdev; } ;
typedef scalar_t__ s32 ;


 scalar_t__ ATLX_ERR_PHY_RES ;
 scalar_t__ ATLX_ERR_PHY_SPEED ;
 int FULL_DUPLEX ;
 int HALF_DUPLEX ;
 int MII_ATLX_PSSR ;



 int MII_ATLX_PSSR_DPLX ;
 int MII_ATLX_PSSR_SPD_DPLX_RESOLVED ;
 int MII_ATLX_PSSR_SPEED ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 scalar_t__ atl1_read_phy_reg (struct atl1_hw*,int ,int*) ;
 int dev_dbg (int *,char*) ;
 int netif_msg_hw (struct atl1_adapter*) ;

__attribute__((used)) static s32 atl1_get_speed_and_duplex(struct atl1_hw *hw, u16 *speed, u16 *duplex)
{
 struct pci_dev *pdev = hw->back->pdev;
 struct atl1_adapter *adapter = hw->back;
 s32 ret_val;
 u16 phy_data;


 ret_val = atl1_read_phy_reg(hw, MII_ATLX_PSSR, &phy_data);
 if (ret_val)
  return ret_val;

 if (!(phy_data & MII_ATLX_PSSR_SPD_DPLX_RESOLVED))
  return ATLX_ERR_PHY_RES;

 switch (phy_data & MII_ATLX_PSSR_SPEED) {
 case 130:
  *speed = SPEED_1000;
  break;
 case 129:
  *speed = SPEED_100;
  break;
 case 128:
  *speed = SPEED_10;
  break;
 default:
  if (netif_msg_hw(adapter))
   dev_dbg(&pdev->dev, "error getting speed\n");
  return ATLX_ERR_PHY_SPEED;
  break;
 }
 if (phy_data & MII_ATLX_PSSR_DPLX)
  *duplex = FULL_DUPLEX;
 else
  *duplex = HALF_DUPLEX;

 return 0;
}
