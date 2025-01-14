
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct net_device {unsigned int base_addr; int name; } ;
struct TYPE_3__ {int pna_phy; int eth_phy; } ;
typedef TYPE_1__ pcnet_dev_t ;


 int AM79C9XX_ETH_PHY ;
 int AM79C9XX_HOME_PHY ;
 int DEBUG (int ,char*,int ,int,int) ;
 unsigned int DLINK_GPIO ;
 int MII_PHYID_REG1 ;
 int MII_PHYID_REG2 ;
 int MII_PHYID_REV_MASK ;
 TYPE_1__* PRIV (struct net_device*) ;
 int mdio_read (unsigned int,int,int) ;

__attribute__((used)) static void mii_phy_probe(struct net_device *dev)
{
    pcnet_dev_t *info = PRIV(dev);
    unsigned int mii_addr = dev->base_addr + DLINK_GPIO;
    int i;
    u_int tmp, phyid;

    for (i = 31; i >= 0; i--) {
 tmp = mdio_read(mii_addr, i, 1);
 if ((tmp == 0) || (tmp == 0xffff))
     continue;
 tmp = mdio_read(mii_addr, i, MII_PHYID_REG1);
 phyid = tmp << 16;
 phyid |= mdio_read(mii_addr, i, MII_PHYID_REG2);
 phyid &= MII_PHYID_REV_MASK;
 DEBUG(0, "%s: MII at %d is 0x%08x\n", dev->name, i, phyid);
 if (phyid == AM79C9XX_HOME_PHY) {
     info->pna_phy = i;
 } else if (phyid != AM79C9XX_ETH_PHY) {
     info->eth_phy = i;
 }
    }
}
