
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int TMP401_CONFIG_READ ;
 int TMP401_CONVERSION_RATE_READ ;

 int TMP401_DEVICE_ID_REG ;
 int TMP401_MANUFACTURER_ID ;
 int TMP401_MANUFACTURER_ID_REG ;

 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,int ,int ) ;
 int tmp401 ;
 TYPE_1__* tmp401_id ;
 int tmp411 ;

__attribute__((used)) static int tmp401_detect(struct i2c_client *client, int kind,
    struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;


 if (kind <= 0) {
  u8 reg;

  reg = i2c_smbus_read_byte_data(client,
            TMP401_MANUFACTURER_ID_REG);
  if (reg != TMP401_MANUFACTURER_ID)
   return -ENODEV;

  reg = i2c_smbus_read_byte_data(client, TMP401_DEVICE_ID_REG);

  switch (reg) {
  case 129:
   kind = tmp401;
   break;
  case 128:
   kind = tmp411;
   break;
  default:
   return -ENODEV;
  }

  reg = i2c_smbus_read_byte_data(client, TMP401_CONFIG_READ);
  if (reg & 0x1b)
   return -ENODEV;

  reg = i2c_smbus_read_byte_data(client,
            TMP401_CONVERSION_RATE_READ);

  if (reg > 15)
   return -ENODEV;
 }
 strlcpy(info->type, tmp401_id[kind - 1].name, I2C_NAME_SIZE);

 return 0;
}
