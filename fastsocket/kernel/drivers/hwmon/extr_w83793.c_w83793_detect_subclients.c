
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w83793_data {TYPE_1__** lm75; } ;
struct i2c_client {int addr; int dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 int EINVAL ;
 int ENODEV ;
 int W83793_REG_I2C_SUBADDR ;
 int dev_err (int *,char*,int) ;
 int* force_subclients ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 void* i2c_new_dummy (struct i2c_adapter*,int) ;
 int i2c_unregister_device (TYPE_1__*) ;
 int w83793_read_value (struct i2c_client*,int ) ;
 int w83793_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static int
w83793_detect_subclients(struct i2c_client *client)
{
 int i, id, err;
 int address = client->addr;
 u8 tmp;
 struct i2c_adapter *adapter = client->adapter;
 struct w83793_data *data = i2c_get_clientdata(client);

 id = i2c_adapter_id(adapter);
 if (force_subclients[0] == id && force_subclients[1] == address) {
  for (i = 2; i <= 3; i++) {
   if (force_subclients[i] < 0x48
       || force_subclients[i] > 0x4f) {
    dev_err(&client->dev,
     "invalid subclient "
     "address %d; must be 0x48-0x4f\n",
     force_subclients[i]);
    err = -EINVAL;
    goto ERROR_SC_0;
   }
  }
  w83793_write_value(client, W83793_REG_I2C_SUBADDR,
       (force_subclients[2] & 0x07) |
       ((force_subclients[3] & 0x07) << 4));
 }

 tmp = w83793_read_value(client, W83793_REG_I2C_SUBADDR);
 if (!(tmp & 0x08)) {
  data->lm75[0] = i2c_new_dummy(adapter, 0x48 + (tmp & 0x7));
 }
 if (!(tmp & 0x80)) {
  if ((data->lm75[0] != ((void*)0))
      && ((tmp & 0x7) == ((tmp >> 4) & 0x7))) {
   dev_err(&client->dev,
    "duplicate addresses 0x%x, "
    "use force_subclients\n", data->lm75[0]->addr);
   err = -ENODEV;
   goto ERROR_SC_1;
  }
  data->lm75[1] = i2c_new_dummy(adapter,
           0x48 + ((tmp >> 4) & 0x7));
 }

 return 0;



ERROR_SC_1:
 if (data->lm75[0] != ((void*)0))
  i2c_unregister_device(data->lm75[0]);
ERROR_SC_0:
 return err;
}
