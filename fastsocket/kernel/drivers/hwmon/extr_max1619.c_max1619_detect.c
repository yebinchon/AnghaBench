
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int MAX1619_REG_R_CHIP_ID ;
 int MAX1619_REG_R_CONFIG ;
 int MAX1619_REG_R_CONVRATE ;
 int MAX1619_REG_R_MAN_ID ;
 int MAX1619_REG_R_STATUS ;
 int dev_dbg (int *,char*,int ) ;
 int dev_info (int *,char*,int,int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int max1619 ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int max1619_detect(struct i2c_client *new_client, int kind,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 u8 reg_config=0, reg_convrate=0, reg_status=0;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;
 if (kind < 0) {
  reg_config = i2c_smbus_read_byte_data(new_client,
         MAX1619_REG_R_CONFIG);
  reg_convrate = i2c_smbus_read_byte_data(new_client,
          MAX1619_REG_R_CONVRATE);
  reg_status = i2c_smbus_read_byte_data(new_client,
    MAX1619_REG_R_STATUS);
  if ((reg_config & 0x03) != 0x00
   || reg_convrate > 0x07 || (reg_status & 0x61 ) !=0x00) {
   dev_dbg(&adapter->dev,
    "MAX1619 detection failed at 0x%02x.\n",
    new_client->addr);
   return -ENODEV;
  }
 }

 if (kind <= 0) {
  u8 man_id, chip_id;

  man_id = i2c_smbus_read_byte_data(new_client,
    MAX1619_REG_R_MAN_ID);
  chip_id = i2c_smbus_read_byte_data(new_client,
     MAX1619_REG_R_CHIP_ID);

  if ((man_id == 0x4D) && (chip_id == 0x04))
   kind = max1619;

  if (kind <= 0) {
   dev_info(&adapter->dev,
       "Unsupported chip (man_id=0x%02X, "
       "chip_id=0x%02X).\n", man_id, chip_id);
   return -ENODEV;
  }
 }

 strlcpy(info->type, "max1619", I2C_NAME_SIZE);

 return 0;
}
