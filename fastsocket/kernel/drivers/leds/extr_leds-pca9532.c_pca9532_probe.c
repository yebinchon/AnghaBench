
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pca9532_platform_data {int dummy; } ;
struct pca9532_data {int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {struct pca9532_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; int adapter; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int dev_info (TYPE_1__*,char*) ;
 int i2c_check_functionality (int ,int ) ;
 struct pca9532_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,struct pca9532_data*) ;
 int kfree (struct pca9532_data*) ;
 struct pca9532_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pca9532_configure (struct i2c_client*,struct pca9532_data*,struct pca9532_platform_data*) ;

__attribute__((used)) static int pca9532_probe(struct i2c_client *client,
 const struct i2c_device_id *id)
{
 struct pca9532_data *data = i2c_get_clientdata(client);
 struct pca9532_platform_data *pca9532_pdata = client->dev.platform_data;
 int err;

 if (!pca9532_pdata)
  return -EIO;

 if (!i2c_check_functionality(client->adapter,
  I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 dev_info(&client->dev, "setting platform data\n");
 i2c_set_clientdata(client, data);
 data->client = client;
 mutex_init(&data->update_lock);

 err = pca9532_configure(client, data, pca9532_pdata);
 if (err) {
  kfree(data);
  i2c_set_clientdata(client, ((void*)0));
 }

 return err;
}
