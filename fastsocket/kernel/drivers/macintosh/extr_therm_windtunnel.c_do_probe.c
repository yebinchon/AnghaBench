
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int driver_data; } ;
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_FUNC_SMBUS_WORD_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;

 int attach_fan (struct i2c_client*) ;
 int attach_thermostat (struct i2c_client*) ;

 int i2c_check_functionality (struct i2c_adapter*,int) ;

__attribute__((used)) static int
do_probe(struct i2c_client *cl, const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = cl->adapter;

 if( !i2c_check_functionality(adapter, I2C_FUNC_SMBUS_WORD_DATA
         | I2C_FUNC_SMBUS_WRITE_BYTE) )
  return 0;

 switch (id->driver_data) {
 case 129:
  return attach_fan( cl );
 case 128:
  return attach_thermostat(cl);
 }
 return 0;
}
