
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct e1000_mac_info {int serdes_has_link; scalar_t__ type; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef int s32 ;


 int E1000_PCS_LSTAT ;
 int E1000_PCS_LSTS_DUPLEX_FULL ;
 int E1000_PCS_LSTS_LINK_OK ;
 int E1000_PCS_LSTS_SPEED_100 ;
 int E1000_PCS_LSTS_SPEED_1000 ;
 int E1000_PCS_LSTS_SYNK_OK ;
 int E1000_STATUS ;
 int E1000_STATUS_2P5_SKU ;
 int E1000_STATUS_2P5_SKU_OVER ;
 scalar_t__ FULL_DUPLEX ;
 scalar_t__ HALF_DUPLEX ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ SPEED_2500 ;
 scalar_t__ e1000_i354 ;
 int hw_dbg (char*) ;
 int rd32 (int ) ;

__attribute__((used)) static s32 igb_get_pcs_speed_and_duplex_82575(struct e1000_hw *hw, u16 *speed,
      u16 *duplex)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 pcs, status;


 mac->serdes_has_link = 0;
 *speed = 0;
 *duplex = 0;





 pcs = rd32(E1000_PCS_LSTAT);





 if ((pcs & E1000_PCS_LSTS_LINK_OK) && (pcs & E1000_PCS_LSTS_SYNK_OK)) {
  mac->serdes_has_link = 1;


  if (pcs & E1000_PCS_LSTS_SPEED_1000)
   *speed = SPEED_1000;
  else if (pcs & E1000_PCS_LSTS_SPEED_100)
   *speed = SPEED_100;
  else
   *speed = SPEED_10;


  if (pcs & E1000_PCS_LSTS_DUPLEX_FULL)
   *duplex = FULL_DUPLEX;
  else
   *duplex = HALF_DUPLEX;


  if (mac->type == e1000_i354) {
   status = rd32(E1000_STATUS);
   if ((status & E1000_STATUS_2P5_SKU) &&
       !(status & E1000_STATUS_2P5_SKU_OVER)) {
    *speed = SPEED_2500;
    *duplex = FULL_DUPLEX;
    hw_dbg("2500 Mbs, ");
    hw_dbg("Full Duplex\n");
   }
  }

 }

 return 0;
}
