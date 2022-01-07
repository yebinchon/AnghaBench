
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm85_data {int type; int vid; int hwmon_dev; int vrm; int freq_map; int update_lock; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int LM85_REG_VID ;
 int PTR_ERR (int ) ;

 int adm1027_freq_map ;

 int const adt7468 ;


 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm85_data*) ;
 int kfree (struct lm85_data*) ;
 struct lm85_data* kzalloc (int,int ) ;
 int lm85_freq_map ;
 int lm85_group ;
 int lm85_group_in4 ;
 int lm85_group_in567 ;
 int lm85_init_client (struct i2c_client*) ;
 int lm85_read_value (struct i2c_client*,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int vid_which_vrm () ;

__attribute__((used)) static int lm85_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct lm85_data *data;
 int err;

 data = kzalloc(sizeof(struct lm85_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 data->type = id->driver_data;
 mutex_init(&data->update_lock);


 switch (data->type) {
 case 131:
 case 130:
 case 129:
 case 128:
  data->freq_map = adm1027_freq_map;
  break;
 default:
  data->freq_map = lm85_freq_map;
 }


 data->vrm = vid_which_vrm();


 lm85_init_client(client);


 err = sysfs_create_group(&client->dev.kobj, &lm85_group);
 if (err)
  goto err_kfree;



 data->vid = lm85_read_value(client, LM85_REG_VID);
 if (!((data->type == 130 || data->type == adt7468) &&
     (data->vid & 0x80)))
  if ((err = sysfs_create_group(&client->dev.kobj,
     &lm85_group_in4)))
   goto err_remove_files;


 if (data->type == 129)
  if ((err = sysfs_create_group(&client->dev.kobj,
     &lm85_group_in567)))
   goto err_remove_files;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto err_remove_files;
 }

 return 0;


 err_remove_files:
 sysfs_remove_group(&client->dev.kobj, &lm85_group);
 sysfs_remove_group(&client->dev.kobj, &lm85_group_in4);
 if (data->type == 129)
  sysfs_remove_group(&client->dev.kobj, &lm85_group_in567);
 err_kfree:
 kfree(data);
 return err;
}
