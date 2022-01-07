
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
 int LM83_REG_R_CHIP_ID ;
 int LM83_REG_R_CONFIG ;
 int LM83_REG_R_MAN_ID ;
 int LM83_REG_R_STATUS1 ;
 int LM83_REG_R_STATUS2 ;
 int dev_dbg (int *,char*,int ) ;
 int dev_info (int *,char*,int,int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int lm82 ;
 int lm83 ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int lm83_detect(struct i2c_client *new_client, int kind,
         struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 const char *name = "";

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;
 if (kind == 0)
  kind = lm83;

 if (kind < 0) {
  if (((i2c_smbus_read_byte_data(new_client, LM83_REG_R_STATUS1)
      & 0xA8) != 0x00) ||
      ((i2c_smbus_read_byte_data(new_client, LM83_REG_R_STATUS2)
      & 0x48) != 0x00) ||
      ((i2c_smbus_read_byte_data(new_client, LM83_REG_R_CONFIG)
      & 0x41) != 0x00)) {
   dev_dbg(&adapter->dev,
    "LM83 detection failed at 0x%02x.\n",
    new_client->addr);
   return -ENODEV;
  }
 }

 if (kind <= 0) {
  u8 man_id, chip_id;

  man_id = i2c_smbus_read_byte_data(new_client,
      LM83_REG_R_MAN_ID);
  chip_id = i2c_smbus_read_byte_data(new_client,
      LM83_REG_R_CHIP_ID);

  if (man_id == 0x01) {
   if (chip_id == 0x03) {
    kind = lm83;
   } else
   if (chip_id == 0x01) {
    kind = lm82;
   }
  }

  if (kind <= 0) {
   dev_info(&adapter->dev,
       "Unsupported chip (man_id=0x%02X, "
       "chip_id=0x%02X).\n", man_id, chip_id);
   return -ENODEV;
  }
 }

 if (kind == lm83) {
  name = "lm83";
 } else
 if (kind == lm82) {
  name = "lm82";
 }

 strlcpy(info->type, name, I2C_NAME_SIZE);

 return 0;
}
