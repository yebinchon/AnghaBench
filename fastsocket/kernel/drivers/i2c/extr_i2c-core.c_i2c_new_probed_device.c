
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union i2c_smbus_data {int dummy; } i2c_smbus_data ;
struct i2c_client {int dummy; } ;
struct i2c_board_info {unsigned short addr; } ;
struct i2c_adapter {int dev; } ;


 unsigned short const I2C_CLIENT_END ;
 int I2C_FUNC_SMBUS_QUICK ;
 int I2C_FUNC_SMBUS_READ_BYTE ;
 int I2C_SMBUS_BYTE ;
 int I2C_SMBUS_QUICK ;
 int I2C_SMBUS_READ ;
 int I2C_SMBUS_WRITE ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,unsigned short const) ;
 scalar_t__ i2c_check_addr (struct i2c_adapter*,unsigned short const) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 scalar_t__ i2c_smbus_xfer (struct i2c_adapter*,unsigned short const,int ,int ,int ,int ,union i2c_smbus_data*) ;

struct i2c_client *
i2c_new_probed_device(struct i2c_adapter *adap,
        struct i2c_board_info *info,
        unsigned short const *addr_list)
{
 int i;


 if (!i2c_check_functionality(adap, I2C_FUNC_SMBUS_READ_BYTE)) {
  dev_err(&adap->dev, "Probing not supported\n");
  return ((void*)0);
 }

 for (i = 0; addr_list[i] != I2C_CLIENT_END; i++) {

  if (addr_list[i] < 0x03 || addr_list[i] > 0x77) {
   dev_warn(&adap->dev, "Invalid 7-bit address "
     "0x%02x\n", addr_list[i]);
   continue;
  }


  if (i2c_check_addr(adap, addr_list[i])) {
   dev_dbg(&adap->dev, "Address 0x%02x already in "
    "use, not probing\n", addr_list[i]);
   continue;
  }
  if ((addr_list[i] & ~0x07) == 0x30
   || (addr_list[i] & ~0x0f) == 0x50
   || !i2c_check_functionality(adap, I2C_FUNC_SMBUS_QUICK)) {
   union i2c_smbus_data data;

   if (i2c_smbus_xfer(adap, addr_list[i], 0,
        I2C_SMBUS_READ, 0,
        I2C_SMBUS_BYTE, &data) >= 0)
    break;
  } else {
   if (i2c_smbus_xfer(adap, addr_list[i], 0,
        I2C_SMBUS_WRITE, 0,
        I2C_SMBUS_QUICK, ((void*)0)) >= 0)
    break;
  }
 }

 if (addr_list[i] == I2C_CLIENT_END) {
  dev_dbg(&adap->dev, "Probing failed, no device found\n");
  return ((void*)0);
 }

 info->addr = addr_list[i];
 return i2c_new_device(adap, info);
}
