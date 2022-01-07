
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct phy_device {int addr; int link; int attached_dev; int duplex; int speed; int state; TYPE_1__* bus; } ;
struct TYPE_7__ {int (* write ) (TYPE_1__*,int,int,int) ;int (* read ) (TYPE_1__*,int,int) ;} ;


 int BMCR_RESET ;
 int DUPLEX_FULL ;
 int MII_BMCR ;
 int PHY_RUNNING ;
 int SPEED_100 ;
 int mdelay (int) ;
 int netif_carrier_on (int ) ;
 int stub1 (TYPE_1__*,int,int,int) ;
 int stub2 (TYPE_1__*,int,int) ;
 int stub3 (TYPE_1__*,int,int,int) ;
 int stub4 (TYPE_1__*,int,int,int) ;
 int stub5 (TYPE_1__*,int,int,int) ;
 int stub6 (TYPE_1__*,int,int) ;

__attribute__((used)) static int ip175c_config_init(struct phy_device *phydev)
{
 int err, i;
 static int full_reset_performed = 0;

 if (full_reset_performed == 0) {


  err = phydev->bus->write(phydev->bus, 30, 0, 0x175c);
  if (err < 0)
   return err;


  err = phydev->bus->read(phydev->bus, 30, 0);


  mdelay(2);


  err = phydev->bus->write(phydev->bus, 29, 31, 0x175c);
  if (err < 0)
   return err;


  err = phydev->bus->write(phydev->bus, 29, 22, 0x420);
  if (err < 0)
   return err;


  for (i = 0; i < 5; i++) {
   err = phydev->bus->write(phydev->bus, i,
       MII_BMCR, BMCR_RESET);
   if (err < 0)
    return err;
  }

  for (i = 0; i < 5; i++)
   err = phydev->bus->read(phydev->bus, i, MII_BMCR);

  mdelay(2);

  full_reset_performed = 1;
 }

 if (phydev->addr != 4) {
  phydev->state = PHY_RUNNING;
  phydev->speed = SPEED_100;
  phydev->duplex = DUPLEX_FULL;
  phydev->link = 1;
  netif_carrier_on(phydev->attached_dev);
 }

 return 0;
}
