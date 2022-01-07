
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_phy {unsigned short (* mdio_read ) (int ,int,int ) ;int mii_id; TYPE_1__* def; int mdio_write; int dev; } ;
struct spider_net_card {int netdev; struct mii_phy phy; } ;
struct TYPE_2__ {int name; } ;


 int MII_BMSR ;
 int SPIDER_NET_DMASEL_VALUE ;
 int SPIDER_NET_GDTDMASEL ;
 int SPIDER_NET_GPCCTRL ;
 int SPIDER_NET_PHY_CTRL_VALUE ;
 int mii_phy_probe (struct mii_phy*,int) ;
 int pr_info (char*,int ) ;
 unsigned short spider_net_read_phy (int ,int,int ) ;
 int spider_net_write_phy ;
 int spider_net_write_reg (struct spider_net_card*,int ,int ) ;

__attribute__((used)) static int
spider_net_setup_phy(struct spider_net_card *card)
{
 struct mii_phy *phy = &card->phy;

 spider_net_write_reg(card, SPIDER_NET_GDTDMASEL,
        SPIDER_NET_DMASEL_VALUE);
 spider_net_write_reg(card, SPIDER_NET_GPCCTRL,
        SPIDER_NET_PHY_CTRL_VALUE);

 phy->dev = card->netdev;
 phy->mdio_read = spider_net_read_phy;
 phy->mdio_write = spider_net_write_phy;

 for (phy->mii_id = 1; phy->mii_id <= 31; phy->mii_id++) {
  unsigned short id;
  id = spider_net_read_phy(card->netdev, phy->mii_id, MII_BMSR);
  if (id != 0x0000 && id != 0xffff) {
   if (!mii_phy_probe(phy, phy->mii_id)) {
    pr_info("Found %s.\n", phy->def->name);
    break;
   }
  }
 }

 return 0;
}
