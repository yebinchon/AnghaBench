
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int board_info_t ;


 int BMCR_RESET ;
 int DM9000_GPR ;
 int DM9000_IMR ;
 int DM9000_RCR ;
 int IMR_PAR ;
 int MII_BMCR ;
 int dm9000_phy_write (struct net_device*,int ,int ,int ) ;
 int iow (int *,int ,int) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static void
dm9000_shutdown(struct net_device *dev)
{
 board_info_t *db = netdev_priv(dev);


 dm9000_phy_write(dev, 0, MII_BMCR, BMCR_RESET);
 iow(db, DM9000_GPR, 0x01);
 iow(db, DM9000_IMR, IMR_PAR);
 iow(db, DM9000_RCR, 0x00);
}
