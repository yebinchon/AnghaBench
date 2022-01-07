
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {unsigned short addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int W83793_REG_BANKSEL ;
 int W83793_REG_CHIPID ;
 int W83793_REG_I2C_ADDR ;
 int W83793_REG_VENDORID ;
 int dev_warn (int *,char*,unsigned short) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int pr_debug (char*) ;
 int strlcpy (int ,char*,int ) ;
 int w83793 ;

__attribute__((used)) static int w83793_detect(struct i2c_client *client, int kind,
    struct i2c_board_info *info)
{
 u8 tmp, bank;
 struct i2c_adapter *adapter = client->adapter;
 unsigned short address = client->addr;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  return -ENODEV;
 }

 bank = i2c_smbus_read_byte_data(client, W83793_REG_BANKSEL);

 if (kind < 0) {
  tmp = bank & 0x80 ? 0x5c : 0xa3;

  if (tmp != i2c_smbus_read_byte_data(client,
       W83793_REG_VENDORID)) {
   pr_debug("w83793: Detection failed at check "
     "vendor id\n");
   return -ENODEV;
  }



  if ((bank & 0x07) == 0
   && i2c_smbus_read_byte_data(client, W83793_REG_I2C_ADDR) !=
      (address << 1)) {
   pr_debug("w83793: Detection failed at check "
     "i2c addr\n");
   return -ENODEV;
  }

 }




 if (kind <= 0) {
  if (0x7b == i2c_smbus_read_byte_data(client,
           W83793_REG_CHIPID)) {
   kind = w83793;
  } else {
   if (kind == 0)
    dev_warn(&adapter->dev, "w83793: Ignoring "
      "'force' parameter for unknown chip "
      "at address 0x%02x\n", address);
   return -ENODEV;
  }
 }

 strlcpy(info->type, "w83793", I2C_NAME_SIZE);

 return 0;
}
