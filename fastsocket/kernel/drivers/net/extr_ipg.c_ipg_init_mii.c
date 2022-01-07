
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct mii_if_info {int (* mdio_read ) (struct net_device*,int,int ) ;int phy_id_mask; int reg_num_mask; int phy_id; int (* mdio_write ) (struct net_device*,int,int ,int) ;struct net_device* dev; } ;
struct ipg_nic_private {int pdev; struct mii_if_info mii_if; } ;


 int ADVERTISE_1000FULL ;
 int ADVERTISE_1000HALF ;
 int BMCR_ANRESTART ;
 int BMCR_RESET ;
 int GMII_PHY_1000BASETCONTROL_PreferMaster ;
 int MII_BMCR ;
 int MII_CTRL1000 ;
 int PCI_REVISION_ID ;
 int ipg_find_phyaddr (struct net_device*) ;
 int ipg_set_phy_default_param (int ,struct net_device*,int) ;
 int mdio_read (struct net_device*,int,int ) ;
 int mdio_write (struct net_device*,int,int ,int) ;
 struct ipg_nic_private* netdev_priv (struct net_device*) ;
 int pci_read_config_byte (int ,int ,int *) ;

__attribute__((used)) static void ipg_init_mii(struct net_device *dev)
{
 struct ipg_nic_private *sp = netdev_priv(dev);
 struct mii_if_info *mii_if = &sp->mii_if;
 int phyaddr;

 mii_if->dev = dev;
 mii_if->mdio_read = mdio_read;
 mii_if->mdio_write = mdio_write;
 mii_if->phy_id_mask = 0x1f;
 mii_if->reg_num_mask = 0x1f;

 mii_if->phy_id = phyaddr = ipg_find_phyaddr(dev);

 if (phyaddr != 0x1f) {
  u16 mii_phyctrl, mii_1000cr;
  u8 revisionid = 0;

  mii_1000cr = mdio_read(dev, phyaddr, MII_CTRL1000);
  mii_1000cr |= ADVERTISE_1000FULL | ADVERTISE_1000HALF |
   GMII_PHY_1000BASETCONTROL_PreferMaster;
  mdio_write(dev, phyaddr, MII_CTRL1000, mii_1000cr);

  mii_phyctrl = mdio_read(dev, phyaddr, MII_BMCR);


  pci_read_config_byte(sp->pdev, PCI_REVISION_ID, &revisionid);
  ipg_set_phy_default_param(revisionid, dev, phyaddr);


  mii_phyctrl |= BMCR_RESET | BMCR_ANRESTART;
  mdio_write(dev, phyaddr, MII_BMCR, mii_phyctrl);

 }
}
