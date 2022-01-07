
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_BLK_PHY_RESET ;
 int E1000_MANC ;
 int E1000_MANC_BLK_PHY_RST_ON_IDE ;
 int rd32 (int ) ;

s32 igb_check_reset_block(struct e1000_hw *hw)
{
 u32 manc;

 manc = rd32(E1000_MANC);

 return (manc & E1000_MANC_BLK_PHY_RST_ON_IDE) ? E1000_BLK_PHY_RESET : 0;
}
