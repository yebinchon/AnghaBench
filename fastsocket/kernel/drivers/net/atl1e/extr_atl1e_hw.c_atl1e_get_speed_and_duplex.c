
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atl1e_hw {int dummy; } ;


 int AT_ERR_PHY_RES ;
 int AT_ERR_PHY_SPEED ;
 int FULL_DUPLEX ;
 int HALF_DUPLEX ;
 int MII_AT001_PSSR ;



 int MII_AT001_PSSR_DPLX ;
 int MII_AT001_PSSR_SPD_DPLX_RESOLVED ;
 int MII_AT001_PSSR_SPEED ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int atl1e_read_phy_reg (struct atl1e_hw*,int ,int*) ;

int atl1e_get_speed_and_duplex(struct atl1e_hw *hw, u16 *speed, u16 *duplex)
{
 int err;
 u16 phy_data;


 err = atl1e_read_phy_reg(hw, MII_AT001_PSSR, &phy_data);
 if (err)
  return err;

 if (!(phy_data & MII_AT001_PSSR_SPD_DPLX_RESOLVED))
  return AT_ERR_PHY_RES;

 switch (phy_data & MII_AT001_PSSR_SPEED) {
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
  return AT_ERR_PHY_SPEED;
  break;
 }

 if (phy_data & MII_AT001_PSSR_DPLX)
  *duplex = FULL_DUPLEX;
 else
  *duplex = HALF_DUPLEX;

 return 0;
}
