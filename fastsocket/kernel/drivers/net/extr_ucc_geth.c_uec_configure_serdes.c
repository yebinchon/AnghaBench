
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucc_geth_private {struct ucc_geth_info* ug_info; } ;
struct ucc_geth_info {int tbi_node; } ;
struct phy_device {int dummy; } ;
struct net_device {int dev; } ;


 int ENET_TBI_MII_ANA ;
 int ENET_TBI_MII_CR ;
 int ENET_TBI_MII_SR ;
 int ENET_TBI_MII_TBICON ;
 int TBIANA_SETTINGS ;
 int TBICON_CLK_SELECT ;
 int TBICR_SETTINGS ;
 int TBISR_LSTATUS ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct ucc_geth_private* netdev_priv (struct net_device*) ;
 struct phy_device* of_phy_find_device (int ) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static void uec_configure_serdes(struct net_device *dev)
{
 struct ucc_geth_private *ugeth = netdev_priv(dev);
 struct ucc_geth_info *ug_info = ugeth->ug_info;
 struct phy_device *tbiphy;

 if (!ug_info->tbi_node) {
  dev_warn(&dev->dev, "SGMII mode requires that the device "
   "tree specify a tbi-handle\n");
  return;
 }

 tbiphy = of_phy_find_device(ug_info->tbi_node);
 if (!tbiphy) {
  dev_err(&dev->dev, "error: Could not get TBI device\n");
  return;
 }







 if (phy_read(tbiphy, ENET_TBI_MII_SR) & TBISR_LSTATUS)
  return;


 phy_write(tbiphy, ENET_TBI_MII_ANA, TBIANA_SETTINGS);

 phy_write(tbiphy, ENET_TBI_MII_TBICON, TBICON_CLK_SELECT);

 phy_write(tbiphy, ENET_TBI_MII_CR, TBICR_SETTINGS);
}
