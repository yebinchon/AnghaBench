
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 scalar_t__ DEFAULT_REVISION ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int LM95241_REG_R_CHIP_ID ;
 int LM95241_REG_R_MAN_ID ;
 scalar_t__ MANUFACTURER_ID ;
 int dev_dbg (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 scalar_t__ i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int lm95241 ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int lm95241_detect(struct i2c_client *new_client, int kind,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 int address = new_client->addr;
 const char *name = "";

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;
 if (kind < 0) {
  if ((i2c_smbus_read_byte_data(new_client, LM95241_REG_R_MAN_ID)
       != MANUFACTURER_ID)
  || (i2c_smbus_read_byte_data(new_client, LM95241_REG_R_CHIP_ID)
      < DEFAULT_REVISION)) {
   dev_dbg(&adapter->dev,
    "LM95241 detection failed at 0x%02x.\n",
    address);
   return -ENODEV;
  }
 }

 if (kind <= 0) {
  if ((i2c_smbus_read_byte_data(new_client, LM95241_REG_R_MAN_ID)
       == MANUFACTURER_ID)
  && (i2c_smbus_read_byte_data(new_client, LM95241_REG_R_CHIP_ID)
      >= DEFAULT_REVISION)) {

   kind = lm95241;

   if (kind <= 0) {
    dev_info(&adapter->dev, "Unsupported chip\n");
    return -ENODEV;
   }
  }
 }


 if (kind == lm95241)
  name = "lm95241";
 strlcpy(info->type, name, I2C_NAME_SIZE);
 return 0;
}
