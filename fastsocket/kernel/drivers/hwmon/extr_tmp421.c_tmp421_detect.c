
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;

 int TMP421_DEVICE_ID_REG ;
 int TMP421_MANUFACTURER_ID ;
 int TMP421_MANUFACTURER_ID_REG ;


 int dev_info (int *,char*,char const*,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,int ,int ) ;
 int tmp421 ;
 TYPE_1__* tmp421_id ;
 int tmp422 ;
 int tmp423 ;

__attribute__((used)) static int tmp421_detect(struct i2c_client *client, int kind,
    struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 const char *names[] = { "TMP421", "TMP422", "TMP423" };

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 if (kind <= 0) {
  u8 reg;

  reg = i2c_smbus_read_byte_data(client,
            TMP421_MANUFACTURER_ID_REG);
  if (reg != TMP421_MANUFACTURER_ID)
   return -ENODEV;

  reg = i2c_smbus_read_byte_data(client,
            TMP421_DEVICE_ID_REG);
  switch (reg) {
  case 130:
   kind = tmp421;
   break;
  case 129:
   kind = tmp422;
   break;
  case 128:
   kind = tmp423;
   break;
  default:
   return -ENODEV;
  }
 }
 strlcpy(info->type, tmp421_id[kind - 1].name, I2C_NAME_SIZE);
 dev_info(&adapter->dev, "Detected TI %s chip at 0x%02x\n",
   names[kind - 1], client->addr);

 return 0;
}
