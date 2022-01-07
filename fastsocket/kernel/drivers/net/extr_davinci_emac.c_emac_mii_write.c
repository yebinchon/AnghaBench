
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int dummy; } ;


 int MDIO_USERACCESS (int ) ;
 int MDIO_USERACCESS_DATA ;
 int MDIO_USERACCESS_GO ;
 int MDIO_USERACCESS_PHYADR ;
 int MDIO_USERACCESS_REGADR ;
 int MDIO_USERACCESS_WRITE ;
 int MDIO_WAIT_FOR_USER_ACCESS ;
 int emac_mdio_write (int ,unsigned int) ;

__attribute__((used)) static int emac_mii_write(struct mii_bus *bus, int phy_id,
     int phy_reg, u16 phy_data)
{

 unsigned int control;


 MDIO_WAIT_FOR_USER_ACCESS;

 control = (MDIO_USERACCESS_GO |
     MDIO_USERACCESS_WRITE |
     ((phy_reg << 21) & MDIO_USERACCESS_REGADR) |
     ((phy_id << 16) & MDIO_USERACCESS_PHYADR) |
     (phy_data & MDIO_USERACCESS_DATA));
 emac_mdio_write(MDIO_USERACCESS(0), control);

 return 0;
}
