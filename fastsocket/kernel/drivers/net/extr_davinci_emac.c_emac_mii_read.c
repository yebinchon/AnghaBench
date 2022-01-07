
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int MDIO_USERACCESS (int ) ;
 unsigned int MDIO_USERACCESS_DATA ;
 int MDIO_USERACCESS_GO ;
 int MDIO_USERACCESS_PHYADR ;
 int MDIO_USERACCESS_READ ;
 int MDIO_USERACCESS_REGADR ;
 int MDIO_WAIT_FOR_USER_ACCESS ;
 unsigned int emac_mdio_read (int ) ;
 int emac_mdio_write (int ,unsigned int) ;

__attribute__((used)) static int emac_mii_read(struct mii_bus *bus, int phy_id, int phy_reg)
{
 unsigned int phy_data = 0;
 unsigned int phy_control;


 MDIO_WAIT_FOR_USER_ACCESS;

 phy_control = (MDIO_USERACCESS_GO |
         MDIO_USERACCESS_READ |
         ((phy_reg << 21) & MDIO_USERACCESS_REGADR) |
         ((phy_id << 16) & MDIO_USERACCESS_PHYADR) |
         (phy_data & MDIO_USERACCESS_DATA));
 emac_mdio_write(MDIO_USERACCESS(0), phy_control);


 MDIO_WAIT_FOR_USER_ACCESS;

 return emac_mdio_read(MDIO_USERACCESS(0)) & MDIO_USERACCESS_DATA;

}
