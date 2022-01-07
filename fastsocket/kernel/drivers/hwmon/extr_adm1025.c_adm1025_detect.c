
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ADM1025_REG_CHIP_ID ;
 int ADM1025_REG_CONFIG ;
 int ADM1025_REG_MAN_ID ;
 int ADM1025_REG_STATUS1 ;
 int ADM1025_REG_STATUS2 ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int adm1025 ;
 int dev_dbg (int *,char*,int) ;
 int dev_info (int *,char*,int,int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int ne1619 ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int adm1025_detect(struct i2c_client *client, int kind,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 const char *name = "";
 u8 config;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;
 config = i2c_smbus_read_byte_data(client, ADM1025_REG_CONFIG);
 if (kind < 0) {
  if ((config & 0x80) != 0x00
   || (i2c_smbus_read_byte_data(client,
       ADM1025_REG_STATUS1) & 0xC0) != 0x00
   || (i2c_smbus_read_byte_data(client,
       ADM1025_REG_STATUS2) & 0xBC) != 0x00) {
   dev_dbg(&adapter->dev,
    "ADM1025 detection failed at 0x%02x.\n",
    client->addr);
   return -ENODEV;
  }
 }

 if (kind <= 0) {
  u8 man_id, chip_id;

  man_id = i2c_smbus_read_byte_data(client, ADM1025_REG_MAN_ID);
  chip_id = i2c_smbus_read_byte_data(client, ADM1025_REG_CHIP_ID);

  if (man_id == 0x41) {
   if ((chip_id & 0xF0) == 0x20) {
    kind = adm1025;
   }
  } else
  if (man_id == 0xA1) {
   if (client->addr != 0x2E
    && (chip_id & 0xF0) == 0x20) {
    kind = ne1619;
   }
  }

  if (kind <= 0) {
   dev_info(&adapter->dev,
       "Unsupported chip (man_id=0x%02X, "
       "chip_id=0x%02X).\n", man_id, chip_id);
   return -ENODEV;
  }
 }

 if (kind == adm1025) {
  name = "adm1025";
 } else if (kind == ne1619) {
  name = "ne1619";
 }
 strlcpy(info->type, name, I2C_NAME_SIZE);

 return 0;
}
