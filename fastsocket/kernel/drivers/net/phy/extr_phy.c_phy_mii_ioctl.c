
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct phy_device {int advertising; TYPE_1__* drv; int speed; int autoneg; int duplex; int addr; } ;
struct mii_ioctl_data {int val_in; int const reg_num; int phy_id; int val_out; } ;
struct TYPE_2__ {int (* config_init ) (struct phy_device*) ;} ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_RESET ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int EOPNOTSUPP ;





 int SPEED_100 ;
 int SPEED_1000 ;
 int phy_read (struct phy_device*,int const) ;
 int phy_scan_fixups (struct phy_device*) ;
 int phy_write (struct phy_device*,int const,int) ;
 int stub1 (struct phy_device*) ;

int phy_mii_ioctl(struct phy_device *phydev,
  struct mii_ioctl_data *mii_data, int cmd)
{
 u16 val = mii_data->val_in;

 switch (cmd) {
 case 130:
  mii_data->phy_id = phydev->addr;


 case 129:
  mii_data->val_out = phy_read(phydev, mii_data->reg_num);
  break;

 case 128:
  if (mii_data->phy_id == phydev->addr) {
   switch(mii_data->reg_num) {
   case 131:
    if ((val & (BMCR_RESET|BMCR_ANENABLE)) == 0)
     phydev->autoneg = AUTONEG_DISABLE;
    else
     phydev->autoneg = AUTONEG_ENABLE;
    if ((!phydev->autoneg) && (val & BMCR_FULLDPLX))
     phydev->duplex = DUPLEX_FULL;
    else
     phydev->duplex = DUPLEX_HALF;
    if ((!phydev->autoneg) &&
      (val & BMCR_SPEED1000))
     phydev->speed = SPEED_1000;
    else if ((!phydev->autoneg) &&
      (val & BMCR_SPEED100))
     phydev->speed = SPEED_100;
    break;
   case 132:
    phydev->advertising = val;
    break;
   default:

    break;
   }
  }

  phy_write(phydev, mii_data->reg_num, val);

  if (mii_data->reg_num == 131
    && val & BMCR_RESET
    && phydev->drv->config_init) {
   phy_scan_fixups(phydev);
   phydev->drv->config_init(phydev);
  }
  break;

 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
