
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int pcf8591_detect(struct i2c_client *client, int kind,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE
         | I2C_FUNC_SMBUS_WRITE_BYTE_DATA))
  return -ENODEV;




 strlcpy(info->type, "pcf8591", I2C_NAME_SIZE);

 return 0;
}
