
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mdio_ops {int dummy; } ;
struct cphy {int dummy; } ;


 int GFP_KERNEL ;
 int MDIO_MMD_PCS ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_STAT2 ;
 int cphy_init (struct cphy*,struct net_device*,int,int *,struct mdio_ops const*) ;
 int cphy_mdio_read (struct cphy*,int ,int,int*) ;
 int cphy_mdio_write (struct cphy*,int ,int,int) ;
 struct cphy* kzalloc (int,int ) ;
 int led_init (struct cphy*) ;
 int mv88x201x_ops ;

__attribute__((used)) static struct cphy *mv88x201x_phy_create(struct net_device *dev, int phy_addr,
      const struct mdio_ops *mdio_ops)
{
 u32 val;
 struct cphy *cphy = kzalloc(sizeof(*cphy), GFP_KERNEL);

 if (!cphy)
  return ((void*)0);

 cphy_init(cphy, dev, phy_addr, &mv88x201x_ops, mdio_ops);


 cphy_mdio_read(cphy, MDIO_MMD_PCS, 0x8300, &val);
 cphy_mdio_write(cphy, MDIO_MMD_PCS, 0x8300, val | 1);


 cphy_mdio_read(cphy, MDIO_MMD_PMAPMD, MDIO_STAT2, &val);
 cphy_mdio_read(cphy, MDIO_MMD_PCS, MDIO_STAT2, &val);


 led_init(cphy);
 return cphy;
}
