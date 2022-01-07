
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tmp401_data {scalar_t__ kind; scalar_t__ hwmon_dev; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {int dev_attr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int device_remove_file (int *,int *) ;
 int hwmon_device_unregister (scalar_t__) ;
 struct tmp401_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct tmp401_data*) ;
 TYPE_1__* tmp401_attr ;
 scalar_t__ tmp411 ;
 TYPE_1__* tmp411_attr ;

__attribute__((used)) static int tmp401_remove(struct i2c_client *client)
{
 struct tmp401_data *data = i2c_get_clientdata(client);
 int i;

 if (data->hwmon_dev)
  hwmon_device_unregister(data->hwmon_dev);

 for (i = 0; i < ARRAY_SIZE(tmp401_attr); i++)
  device_remove_file(&client->dev, &tmp401_attr[i].dev_attr);

 if (data->kind == tmp411) {
  for (i = 0; i < ARRAY_SIZE(tmp411_attr); i++)
   device_remove_file(&client->dev,
        &tmp411_attr[i].dev_attr);
 }

 kfree(data);
 return 0;
}
