
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_ERR_PHY ;
 int E1000_I2CCMD ;
 scalar_t__ E1000_I2CCMD_ERROR ;
 scalar_t__ E1000_I2CCMD_OPCODE_READ ;
 scalar_t__ E1000_I2CCMD_PHY_TIMEOUT ;
 scalar_t__ E1000_I2CCMD_READY ;
 scalar_t__ E1000_I2CCMD_REG_ADDR_SHIFT ;
 scalar_t__ E1000_I2CCMD_SFP_DIAG_ADDR (int) ;
 int hw_dbg (char*) ;
 scalar_t__ rd32 (int ) ;
 int udelay (int) ;
 int wr32 (int ,scalar_t__) ;

s32 igb_read_sfp_data_byte(struct e1000_hw *hw, u16 offset, u8 *data)
{
 u32 i = 0;
 u32 i2ccmd = 0;
 u32 data_local = 0;

 if (offset > E1000_I2CCMD_SFP_DIAG_ADDR(255)) {
  hw_dbg("I2CCMD command address exceeds upper limit\n");
  return -E1000_ERR_PHY;
 }





 i2ccmd = ((offset << E1000_I2CCMD_REG_ADDR_SHIFT) |
    E1000_I2CCMD_OPCODE_READ);

 wr32(E1000_I2CCMD, i2ccmd);


 for (i = 0; i < E1000_I2CCMD_PHY_TIMEOUT; i++) {
  udelay(50);
  data_local = rd32(E1000_I2CCMD);
  if (data_local & E1000_I2CCMD_READY)
   break;
 }
 if (!(data_local & E1000_I2CCMD_READY)) {
  hw_dbg("I2CCMD Read did not complete\n");
  return -E1000_ERR_PHY;
 }
 if (data_local & E1000_I2CCMD_ERROR) {
  hw_dbg("I2CCMD Error bit set\n");
  return -E1000_ERR_PHY;
 }
 *data = (u8) data_local & 0xFF;

 return 0;
}
