
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct dme1737_data {int hwmon_dev; } ;


 int dme1737_remove_files (int *) ;
 int hwmon_device_unregister (int ) ;
 struct dme1737_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct dme1737_data*) ;

__attribute__((used)) static int dme1737_i2c_remove(struct i2c_client *client)
{
 struct dme1737_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 dme1737_remove_files(&client->dev);

 kfree(data);
 return 0;
}
