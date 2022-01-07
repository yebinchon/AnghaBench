
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ADT7473_DEVICE ;
 int ADT7473_REG_DEVICE ;
 int ADT7473_REG_REVISION ;
 int ADT7473_REG_VENDOR ;
 int ADT7473_REV_68 ;
 int ADT7473_REV_69 ;
 int ADT7473_VENDOR ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int dev_dbg (int *,char*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int adt7473_detect(struct i2c_client *client, int kind,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 if (kind <= 0) {
  int vendor, device, revision;

  vendor = i2c_smbus_read_byte_data(client, ADT7473_REG_VENDOR);
  if (vendor != ADT7473_VENDOR)
   return -ENODEV;

  device = i2c_smbus_read_byte_data(client, ADT7473_REG_DEVICE);
  if (device != ADT7473_DEVICE)
   return -ENODEV;

  revision = i2c_smbus_read_byte_data(client,
          ADT7473_REG_REVISION);
  if (revision != ADT7473_REV_68 && revision != ADT7473_REV_69)
   return -ENODEV;
 } else
  dev_dbg(&adapter->dev, "detection forced\n");

 strlcpy(info->type, "adt7473", I2C_NAME_SIZE);

 return 0;
}
