
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; int flags; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_CLIENT_PEC ;
 int I2C_FUNC_SMBUS_BYTE ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int LM90_REG_R_CHIP_ID ;
 int LM90_REG_R_CONFIG1 ;
 int LM90_REG_R_CONFIG2 ;
 int LM90_REG_R_CONVRATE ;
 int LM90_REG_R_MAN_ID ;
 int adm1032 ;
 int adt7461 ;
 int dev_dbg (int *,char*,int,int,int) ;
 int dev_info (int *,char*,int,...) ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 scalar_t__ i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int lm86 ;
 int lm90 ;
 int lm99 ;
 int max6646 ;
 int max6657 ;
 int max6680 ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int lm90_detect(struct i2c_client *new_client, int kind,
         struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 int address = new_client->addr;
 const char *name = "";

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;
 if (kind == 0)
  kind = lm90;

 if (kind < 0) {
  int man_id, chip_id, reg_config1, reg_convrate;

  if ((man_id = i2c_smbus_read_byte_data(new_client,
      LM90_REG_R_MAN_ID)) < 0
   || (chip_id = i2c_smbus_read_byte_data(new_client,
      LM90_REG_R_CHIP_ID)) < 0
   || (reg_config1 = i2c_smbus_read_byte_data(new_client,
      LM90_REG_R_CONFIG1)) < 0
   || (reg_convrate = i2c_smbus_read_byte_data(new_client,
      LM90_REG_R_CONVRATE)) < 0)
   return -ENODEV;

  if ((address == 0x4C || address == 0x4D)
   && man_id == 0x01) {
   int reg_config2;

   if ((reg_config2 = i2c_smbus_read_byte_data(new_client,
      LM90_REG_R_CONFIG2)) < 0)
    return -ENODEV;

   if ((reg_config1 & 0x2A) == 0x00
    && (reg_config2 & 0xF8) == 0x00
    && reg_convrate <= 0x09) {
    if (address == 0x4C
     && (chip_id & 0xF0) == 0x20) {
     kind = lm90;
    } else
    if ((chip_id & 0xF0) == 0x30) {
     kind = lm99;
     dev_info(&adapter->dev,
       "Assuming LM99 chip at "
       "0x%02x\n", address);
     dev_info(&adapter->dev,
       "If it is an LM89, pass "
       "force_lm86=%d,0x%02x when "
       "loading the lm90 driver\n",
       i2c_adapter_id(adapter),
       address);
    } else
    if (address == 0x4C
     && (chip_id & 0xF0) == 0x10) {
     kind = lm86;
    }
   }
  } else
  if ((address == 0x4C || address == 0x4D)
   && man_id == 0x41) {
   if ((chip_id & 0xF0) == 0x40
    && (reg_config1 & 0x3F) == 0x00
    && reg_convrate <= 0x0A) {
    kind = adm1032;
   } else
   if (chip_id == 0x51
    && (reg_config1 & 0x1B) == 0x00
    && reg_convrate <= 0x0A) {
    kind = adt7461;
   }
  } else
  if (man_id == 0x4D) {
   if (chip_id == man_id
    && (address == 0x4C || address == 0x4D)
    && (reg_config1 & 0x1F) == (man_id & 0x0F)
    && reg_convrate <= 0x09) {
     kind = max6657;
   } else






   if (chip_id == 0x01
    && (reg_config1 & 0x03) == 0x00
    && reg_convrate <= 0x07) {
     kind = max6680;
   } else





   if (chip_id == 0x59
    && (reg_config1 & 0x3f) == 0x00
    && reg_convrate <= 0x07) {
    kind = max6646;
   }
  }

  if (kind <= 0) {
   dev_dbg(&adapter->dev,
    "Unsupported chip at 0x%02x (man_id=0x%02X, "
    "chip_id=0x%02X)\n", address, man_id, chip_id);
   return -ENODEV;
  }
 }


 if (kind == lm90) {
  name = "lm90";
 } else if (kind == adm1032) {
  name = "adm1032";


  if (i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE))
   info->flags |= I2C_CLIENT_PEC;
 } else if (kind == lm99) {
  name = "lm99";
 } else if (kind == lm86) {
  name = "lm86";
 } else if (kind == max6657) {
  name = "max6657";
 } else if (kind == max6680) {
  name = "max6680";
 } else if (kind == adt7461) {
  name = "adt7461";
 } else if (kind == max6646) {
  name = "max6646";
 }
 strlcpy(info->type, name, I2C_NAME_SIZE);

 return 0;
}
