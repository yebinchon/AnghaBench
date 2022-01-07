
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MV64x60_I2C_CONTROL_ACK ;
 int MV64x60_I2C_CONTROL_START ;
 int MV64x60_I2C_CONTROL_STOP ;
 int MV64x60_I2C_CONTROL_TWSIEN ;
 int MV64x60_I2C_REG_BAUD ;
 int MV64x60_I2C_REG_EXT_SLAVE_ADDR ;
 int MV64x60_I2C_REG_SLAVE_ADDR ;
 int MV64x60_I2C_REG_SOFT_RESET ;
 int MV64x60_I2C_STATUS_MAST_RD_ADDR_ACK ;
 int MV64x60_I2C_STATUS_MAST_RD_DATA_ACK ;
 int MV64x60_I2C_STATUS_MAST_RD_DATA_NO_ACK ;
 int MV64x60_I2C_STATUS_MAST_REPEAT_START ;
 int MV64x60_I2C_STATUS_MAST_START ;
 int MV64x60_I2C_STATUS_MAST_WR_ACK ;
 int MV64x60_I2C_STATUS_MAST_WR_ADDR_ACK ;
 int MV64x60_I2C_STATUS_NO_STATUS ;
 int * ctlr_base ;
 scalar_t__ mv64x60_i2c_control (int,int) ;
 int mv64x60_i2c_read_byte (int,int) ;
 scalar_t__ mv64x60_i2c_write_byte (int,int,int) ;
 int out_le32 (int*,int) ;
 int printf (char*,int) ;

int mv64x60_i2c_read(u32 devaddr, u8 *buf, u32 offset, u32 offset_size,
   u32 count)
{
 int i;
 int data;
 int control;
 int status;

 if (ctlr_base == ((void*)0))
  return -1;


 out_le32((u32 *)(ctlr_base + MV64x60_I2C_REG_SOFT_RESET), 0);
 out_le32((u32 *)(ctlr_base + MV64x60_I2C_REG_SLAVE_ADDR), 0);
 out_le32((u32 *)(ctlr_base + MV64x60_I2C_REG_EXT_SLAVE_ADDR), 0);
 out_le32((u32 *)(ctlr_base + MV64x60_I2C_REG_BAUD), (4 << 3) | 0x4);

 if (mv64x60_i2c_control(MV64x60_I2C_CONTROL_TWSIEN,
    MV64x60_I2C_STATUS_NO_STATUS) < 0)
  return -1;


 control = MV64x60_I2C_CONTROL_START | MV64x60_I2C_CONTROL_TWSIEN;
 status = MV64x60_I2C_STATUS_MAST_START;
 if (mv64x60_i2c_control(control, status) < 0)
  return -1;


 data = devaddr & ~0x1;
 control = MV64x60_I2C_CONTROL_TWSIEN;
 status = MV64x60_I2C_STATUS_MAST_WR_ADDR_ACK;
 if (mv64x60_i2c_write_byte(data, control, status) < 0)
  return -1;


 control = MV64x60_I2C_CONTROL_TWSIEN;
 status = MV64x60_I2C_STATUS_MAST_WR_ACK;
 if (offset_size > 1) {
  if (mv64x60_i2c_write_byte(offset >> 8, control, status) < 0)
   return -1;
 }
 if (mv64x60_i2c_write_byte(offset, control, status) < 0)
  return -1;


 control = MV64x60_I2C_CONTROL_START | MV64x60_I2C_CONTROL_TWSIEN;
 status = MV64x60_I2C_STATUS_MAST_REPEAT_START;
 if (mv64x60_i2c_control(control, status) < 0)
  return -1;


 data = devaddr | 0x1;
 control = MV64x60_I2C_CONTROL_TWSIEN;
 status = MV64x60_I2C_STATUS_MAST_RD_ADDR_ACK;
 if (mv64x60_i2c_write_byte(data, control, status) < 0)
  return -1;


 control = MV64x60_I2C_CONTROL_ACK | MV64x60_I2C_CONTROL_TWSIEN;
 status = MV64x60_I2C_STATUS_MAST_RD_DATA_ACK;

 for (i=1; i<count; i++) {
  data = mv64x60_i2c_read_byte(control, status);
  if (data < 0) {
   printf("errors on iteration %d\n", i);
   return -1;
  }
  *buf++ = data;
 }


 control = MV64x60_I2C_CONTROL_TWSIEN;
 status = MV64x60_I2C_STATUS_MAST_RD_DATA_NO_ACK;
 data = mv64x60_i2c_read_byte(control, status);
 if (data < 0)
  return -1;
 *buf++ = data;


 control = MV64x60_I2C_CONTROL_STOP | MV64x60_I2C_CONTROL_TWSIEN;
 status = MV64x60_I2C_STATUS_NO_STATUS;
 if (mv64x60_i2c_control(control, status) < 0)
  return -1;

 return count;
}
