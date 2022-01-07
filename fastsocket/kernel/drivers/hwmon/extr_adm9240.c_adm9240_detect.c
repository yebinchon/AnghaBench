
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ADM9240_REG_DIE_REV ;
 int ADM9240_REG_I2C_ADDR ;
 int ADM9240_REG_MAN_ID ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int adm9240 ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,char*,int) ;
 int ds1780 ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int lm81 ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int adm9240_detect(struct i2c_client *new_client, int kind,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 const char *name = "";
 int address = new_client->addr;
 u8 man_id, die_rev;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 if (kind == 0) {
  kind = adm9240;
 }

 if (kind < 0) {


  if (i2c_smbus_read_byte_data(new_client, ADM9240_REG_I2C_ADDR)
    != address) {
   dev_err(&adapter->dev, "detect fail: address match, "
     "0x%02x\n", address);
   return -ENODEV;
  }


  man_id = i2c_smbus_read_byte_data(new_client,
    ADM9240_REG_MAN_ID);
  if (man_id == 0x23) {
   kind = adm9240;
  } else if (man_id == 0xda) {
   kind = ds1780;
  } else if (man_id == 0x01) {
   kind = lm81;
  } else {
   dev_err(&adapter->dev, "detect fail: unknown manuf, "
     "0x%02x\n", man_id);
   return -ENODEV;
  }


  die_rev = i2c_smbus_read_byte_data(new_client,
    ADM9240_REG_DIE_REV);
  dev_info(&adapter->dev, "found %s revision %u\n",
    man_id == 0x23 ? "ADM9240" :
    man_id == 0xda ? "DS1780" : "LM81", die_rev);
 }


 if (kind == adm9240) {
  name = "adm9240";
 } else if (kind == ds1780) {
  name = "ds1780";
 } else if (kind == lm81) {
  name = "lm81";
 }
 strlcpy(info->type, name, I2C_NAME_SIZE);

 return 0;
}
