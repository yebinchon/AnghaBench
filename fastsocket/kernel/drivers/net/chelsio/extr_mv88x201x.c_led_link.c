
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int dummy; } ;


 int LINK_ENABLE_BIT ;
 int MDIO_CTRL2 ;
 int MDIO_MMD_PMAPMD ;
 int cphy_mdio_read (struct cphy*,int ,int ,int*) ;
 int cphy_mdio_write (struct cphy*,int ,int ,int) ;

__attribute__((used)) static int led_link(struct cphy *cphy, u32 do_enable)
{
 u32 led = 0;


 cphy_mdio_read(cphy, MDIO_MMD_PMAPMD, MDIO_CTRL2, &led);

 if (do_enable & 0x1) {
  led |= 0x1;
  cphy_mdio_write(cphy, MDIO_MMD_PMAPMD, MDIO_CTRL2, led);
 } else {
  led &= ~0x1;
  cphy_mdio_write(cphy, MDIO_MMD_PMAPMD, MDIO_CTRL2, led);
 }
 return 0;
}
