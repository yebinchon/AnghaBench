
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atl1c_hw {int dummy; } ;


 int FULL_DUPLEX ;



 int GIGA_PSSR_DPLX ;
 int GIGA_PSSR_SPD_DPLX_RESOLVED ;
 int GIGA_PSSR_SPEED ;
 int HALF_DUPLEX ;
 int MII_GIGA_PSSR ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int atl1c_read_phy_reg (struct atl1c_hw*,int ,int*) ;

int atl1c_get_speed_and_duplex(struct atl1c_hw *hw, u16 *speed, u16 *duplex)
{
 int err;
 u16 phy_data;


 err = atl1c_read_phy_reg(hw, MII_GIGA_PSSR, &phy_data);
 if (err)
  return err;

 if (!(phy_data & GIGA_PSSR_SPD_DPLX_RESOLVED))
  return -1;

 switch (phy_data & GIGA_PSSR_SPEED) {
 case 130:
  *speed = SPEED_1000;
  break;
 case 129:
  *speed = SPEED_100;
  break;
 case 128:
  *speed = SPEED_10;
  break;
 default:
  return -1;
  break;
 }

 if (phy_data & GIGA_PSSR_DPLX)
  *duplex = FULL_DUPLEX;
 else
  *duplex = HALF_DUPLEX;

 return 0;
}
