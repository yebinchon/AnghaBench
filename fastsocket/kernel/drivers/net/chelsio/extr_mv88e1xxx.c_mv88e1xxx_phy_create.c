
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mdio_ops {int dummy; } ;
struct cphy {int dummy; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int caps; scalar_t__ chip_phy; } ;


 scalar_t__ CHBT_PHY_88E1111 ;
 int GFP_KERNEL ;
 int MV88E1XXX_EXTENDED_ADDR_REGISTER ;
 int MV88E1XXX_EXTENDED_REGISTER ;
 int MV88E1XXX_LED_CONTROL_REGISTER ;
 int SUPPORTED_TP ;
 TYPE_1__* board_info (struct adapter*) ;
 int cphy_init (struct cphy*,struct net_device*,int,int *,struct mdio_ops const*) ;
 scalar_t__ is_T2 (struct adapter*) ;
 struct cphy* kzalloc (int,int ) ;
 int mv88e1xxx_downshift_set (struct cphy*,int) ;
 int mv88e1xxx_ops ;
 struct adapter* netdev_priv (struct net_device*) ;
 int simple_mdio_write (struct cphy*,int ,int) ;

__attribute__((used)) static struct cphy *mv88e1xxx_phy_create(struct net_device *dev, int phy_addr,
      const struct mdio_ops *mdio_ops)
{
 struct adapter *adapter = netdev_priv(dev);
 struct cphy *cphy = kzalloc(sizeof(*cphy), GFP_KERNEL);

 if (!cphy)
  return ((void*)0);

 cphy_init(cphy, dev, phy_addr, &mv88e1xxx_ops, mdio_ops);


 if ((board_info(adapter)->caps & SUPPORTED_TP) &&
     board_info(adapter)->chip_phy == CHBT_PHY_88E1111) {



  (void) simple_mdio_write(cphy,
    MV88E1XXX_EXTENDED_ADDR_REGISTER, 0xB);
  (void) simple_mdio_write(cphy,
    MV88E1XXX_EXTENDED_REGISTER, 0x8004);
 }
 (void) mv88e1xxx_downshift_set(cphy, 1);


 if (is_T2(adapter)) {
  (void) simple_mdio_write(cphy,
    MV88E1XXX_LED_CONTROL_REGISTER, 0x1);
 }

 return cphy;
}
