
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
struct i2c_driver {int (* detect ) (struct i2c_client*,int,struct i2c_board_info*) ;int clients; TYPE_1__ driver; } ;
struct i2c_client {int addr; int detected; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int addr; char* type; } ;
struct i2c_adapter {int dev; } ;


 int EINVAL ;
 int ENODEV ;
 int I2C_SMBUS_QUICK ;
 int dev_dbg (int *,char*,char*,int) ;
 int dev_err (int *,char*,char*,int) ;
 int dev_warn (int *,char*,int) ;
 scalar_t__ i2c_check_addr (struct i2c_adapter*,int) ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 scalar_t__ i2c_smbus_xfer (struct i2c_adapter*,int,int ,int ,int ,int ,int *) ;
 int list_add_tail (int *,int *) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int stub1 (struct i2c_client*,int,struct i2c_board_info*) ;

__attribute__((used)) static int i2c_detect_address(struct i2c_client *temp_client, int kind,
         struct i2c_driver *driver)
{
 struct i2c_board_info info;
 struct i2c_adapter *adapter = temp_client->adapter;
 int addr = temp_client->addr;
 int err;


 if (addr < 0x03 || addr > 0x77) {
  dev_warn(&adapter->dev, "Invalid probe address 0x%02x\n",
    addr);
  return -EINVAL;
 }


 if (i2c_check_addr(adapter, addr))
  return 0;


 if (kind < 0) {
  if (i2c_smbus_xfer(adapter, addr, 0, 0, 0,
       I2C_SMBUS_QUICK, ((void*)0)) < 0)
   return 0;


  if ((addr & ~0x0f) == 0x50)
   i2c_smbus_xfer(adapter, addr, 0, 0, 0,
           I2C_SMBUS_QUICK, ((void*)0));
 }


 memset(&info, 0, sizeof(struct i2c_board_info));
 info.addr = addr;
 err = driver->detect(temp_client, kind, &info);
 if (err) {


  return err == -ENODEV ? 0 : err;
 }


 if (info.type[0] == '\0') {
  dev_err(&adapter->dev, "%s detection function provided "
   "no name for 0x%x\n", driver->driver.name,
   addr);
 } else {
  struct i2c_client *client;


  dev_dbg(&adapter->dev, "Creating %s at 0x%02x\n",
   info.type, info.addr);
  client = i2c_new_device(adapter, &info);
  if (client)
   list_add_tail(&client->detected, &driver->clients);
  else
   dev_err(&adapter->dev, "Failed creating %s at 0x%02x\n",
    info.type, info.addr);
 }
 return 0;
}
