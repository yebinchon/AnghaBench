
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mdio_ops {int dummy; } ;
struct cphy {scalar_t__ bmsr; int phy_update; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int cphy_init (struct cphy*,struct net_device*,int,int *,struct mdio_ops const*) ;
 struct cphy* kzalloc (int,int ) ;
 int my3126_ops ;
 int my3216_poll ;

__attribute__((used)) static struct cphy *my3126_phy_create(struct net_device *dev,
   int phy_addr, const struct mdio_ops *mdio_ops)
{
 struct cphy *cphy = kzalloc(sizeof (*cphy), GFP_KERNEL);

 if (!cphy)
  return ((void*)0);

 cphy_init(cphy, dev, phy_addr, &my3126_ops, mdio_ops);
 INIT_DELAYED_WORK(&cphy->phy_update, my3216_poll);
 cphy->bmsr = 0;

 return cphy;
}
