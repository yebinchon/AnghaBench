
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int dev_err (int *,char*,int,int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int strlcpy (int ,char*,int ) ;
 int vid_which_vrm () ;

__attribute__((used)) static int atxp1_detect(struct i2c_client *new_client, int kind,
   struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;

 u8 temp;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;


 if (!((i2c_smbus_read_byte_data(new_client, 0x3e) == 0) &&
      (i2c_smbus_read_byte_data(new_client, 0x3f) == 0) &&
      (i2c_smbus_read_byte_data(new_client, 0xfe) == 0) &&
      (i2c_smbus_read_byte_data(new_client, 0xff) == 0)))
  return -ENODEV;



 temp = i2c_smbus_read_byte_data(new_client, 0x00);

 if (!((i2c_smbus_read_byte_data(new_client, 0x10) == temp) &&
       (i2c_smbus_read_byte_data(new_client, 0x11) == temp)))
  return -ENODEV;


 temp = vid_which_vrm();

 if ((temp != 90) && (temp != 91)) {
  dev_err(&adapter->dev, "atxp1: Not supporting VRM %d.%d\n",
    temp / 10, temp % 10);
  return -ENODEV;
 }

 strlcpy(info->type, "atxp1", I2C_NAME_SIZE);

 return 0;
}
