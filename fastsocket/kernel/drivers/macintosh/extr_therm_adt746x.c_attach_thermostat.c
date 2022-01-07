
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int detected; } ;
struct i2c_board_info {int addr; int type; } ;
struct i2c_adapter {scalar_t__ name; } ;
struct TYPE_2__ {int clients; } ;


 int ENODEV ;
 int I2C_NAME_SIZE ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int list_add_tail (int *,int *) ;
 int memset (struct i2c_board_info*,int ,int) ;
 unsigned long simple_strtoul (scalar_t__,int *,int) ;
 int strlcpy (int ,char*,int ) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;
 int therm_address ;
 unsigned long therm_bus ;
 TYPE_1__ thermostat_driver ;

__attribute__((used)) static int
attach_thermostat(struct i2c_adapter *adapter)
{
 unsigned long bus_no;
 struct i2c_board_info info;
 struct i2c_client *client;

 if (strncmp(adapter->name, "uni-n", 5))
  return -ENODEV;
 bus_no = simple_strtoul(adapter->name + 6, ((void*)0), 10);
 if (bus_no != therm_bus)
  return -ENODEV;

 memset(&info, 0, sizeof(struct i2c_board_info));
 strlcpy(info.type, "therm_adt746x", I2C_NAME_SIZE);
 info.addr = therm_address;
 client = i2c_new_device(adapter, &info);
 if (!client)
  return -ENODEV;





 list_add_tail(&client->detected, &thermostat_driver.clients);
 return 0;
}
