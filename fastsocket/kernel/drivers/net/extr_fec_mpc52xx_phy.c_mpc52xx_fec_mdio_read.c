
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int FEC_MII_READ_FRAME ;
 int mpc52xx_fec_mdio_transfer (struct mii_bus*,int,int,int ) ;

__attribute__((used)) static int mpc52xx_fec_mdio_read(struct mii_bus *bus, int phy_id, int reg)
{
 return mpc52xx_fec_mdio_transfer(bus, phy_id, reg, FEC_MII_READ_FRAME);
}
