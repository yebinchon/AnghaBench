
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_RQSMR (int) ;
 int IXGBE_TQSM (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static s32 ixgbe_dcb_config_tc_stats_82599(struct ixgbe_hw *hw)
{
 u32 reg = 0;
 u8 i = 0;







 for (i = 0; i < 32; i++) {
  reg = 0x01010101 * (i / 4);
  IXGBE_WRITE_REG(hw, IXGBE_RQSMR(i), reg);
 }
 for (i = 0; i < 32; i++) {
  if (i < 8)
   reg = 0x00000000;
  else if (i < 16)
   reg = 0x01010101;
  else if (i < 20)
   reg = 0x02020202;
  else if (i < 24)
   reg = 0x03030303;
  else if (i < 26)
   reg = 0x04040404;
  else if (i < 28)
   reg = 0x05050505;
  else if (i < 30)
   reg = 0x06060606;
  else
   reg = 0x07070707;
  IXGBE_WRITE_REG(hw, IXGBE_TQSM(i), reg);
 }

 return 0;
}
