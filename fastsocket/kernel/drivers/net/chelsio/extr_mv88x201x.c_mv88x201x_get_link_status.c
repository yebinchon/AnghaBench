
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int dummy; } ;


 int DUPLEX_FULL ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_STAT1 ;
 int MDIO_STAT1_LSTATUS ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 int SPEED_10000 ;
 int cphy_mdio_read (struct cphy*,int ,int ,int *) ;
 int led_link (struct cphy*,int) ;

__attribute__((used)) static int mv88x201x_get_link_status(struct cphy *cphy, int *link_ok,
         int *speed, int *duplex, int *fc)
{
 u32 val = 0;

 if (link_ok) {

  cphy_mdio_read(cphy, MDIO_MMD_PMAPMD, MDIO_STAT1, &val);
  val &= MDIO_STAT1_LSTATUS;
  *link_ok = (val == MDIO_STAT1_LSTATUS);

  led_link(cphy, *link_ok);
 }
 if (speed)
  *speed = SPEED_10000;
 if (duplex)
  *duplex = DUPLEX_FULL;
 if (fc)
  *fc = PAUSE_RX | PAUSE_TX;
 return 0;
}
