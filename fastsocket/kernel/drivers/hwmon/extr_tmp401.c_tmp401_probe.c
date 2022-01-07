
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tmp401_data {int kind; int * hwmon_dev; int update_lock; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {int dev_attr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_info (int *,char*,char const*) ;
 int device_create_file (int *,int *) ;
 int * hwmon_device_register (int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct tmp401_data*) ;
 struct tmp401_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 TYPE_1__* tmp401_attr ;
 int tmp401_init_client (struct i2c_client*) ;
 int tmp401_remove (struct i2c_client*) ;
 int tmp411 ;
 TYPE_1__* tmp411_attr ;

__attribute__((used)) static int tmp401_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int i, err = 0;
 struct tmp401_data *data;
 const char *names[] = { "TMP401", "TMP411" };

 data = kzalloc(sizeof(struct tmp401_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);
 data->kind = id->driver_data;


 tmp401_init_client(client);


 for (i = 0; i < ARRAY_SIZE(tmp401_attr); i++) {
  err = device_create_file(&client->dev,
      &tmp401_attr[i].dev_attr);
  if (err)
   goto exit_remove;
 }


 if (data->kind == tmp411) {
  for (i = 0; i < ARRAY_SIZE(tmp411_attr); i++) {
   err = device_create_file(&client->dev,
       &tmp411_attr[i].dev_attr);
   if (err)
    goto exit_remove;
  }
 }

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  data->hwmon_dev = ((void*)0);
  goto exit_remove;
 }

 dev_info(&client->dev, "Detected TI %s chip\n",
   names[data->kind - 1]);

 return 0;

exit_remove:
 tmp401_remove(client);
 return err;
}
