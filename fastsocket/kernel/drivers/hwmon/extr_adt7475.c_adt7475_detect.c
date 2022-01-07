
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {scalar_t__ addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int REG_DEVID ;
 int REG_VENDID ;
 TYPE_1__* adt7475_id ;
 int adt7475_read (int ) ;
 int dev_err (int *,char*,unsigned int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int adt7475_detect(struct i2c_client *client, int kind,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 if (kind <= 0) {
  if (adt7475_read(REG_VENDID) != 0x41 ||
      adt7475_read(REG_DEVID) != 0x75) {
   dev_err(&adapter->dev,
    "Couldn't detect a adt7475 part at 0x%02x\n",
    (unsigned int)client->addr);
   return -ENODEV;
  }
 }

 strlcpy(info->type, adt7475_id[0].name, I2C_NAME_SIZE);

 return 0;
}
