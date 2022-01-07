
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3 {int phy_flags; TYPE_1__* mdio_bus; } ;
struct TYPE_2__ {int * phy_map; } ;


 int TG3_PHYFLG_IS_CONNECTED ;
 size_t TG3_PHY_MII_ADDR ;
 int phy_disconnect (int ) ;

__attribute__((used)) static void tg3_phy_fini(struct tg3 *tp)
{
 if (tp->phy_flags & TG3_PHYFLG_IS_CONNECTED) {
  phy_disconnect(tp->mdio_bus->phy_map[TG3_PHY_MII_ADDR]);
  tp->phy_flags &= ~TG3_PHYFLG_IS_CONNECTED;
 }
}
