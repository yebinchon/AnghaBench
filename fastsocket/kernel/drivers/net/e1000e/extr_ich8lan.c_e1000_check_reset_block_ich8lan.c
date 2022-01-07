
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_BLK_PHY_RESET ;
 int E1000_ICH_FWSM_RSPCIPHY ;
 int FWSM ;
 int er32 (int ) ;

__attribute__((used)) static s32 e1000_check_reset_block_ich8lan(struct e1000_hw *hw)
{
 u32 fwsm;

 fwsm = er32(FWSM);

 return (fwsm & E1000_ICH_FWSM_RSPCIPHY) ? 0 : E1000_BLK_PHY_RESET;
}
