
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attrs; } ;
struct ics932s401_data {TYPE_1__ attrs; int lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int kobj; } ;
struct i2c_client {TYPE_2__ dev; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (TYPE_2__*,char*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct ics932s401_data*) ;
 int ics932s401_attr ;
 int kfree (struct ics932s401_data*) ;
 struct ics932s401_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,TYPE_1__*) ;

__attribute__((used)) static int ics932s401_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct ics932s401_data *data;
 int err;

 data = kzalloc(sizeof(struct ics932s401_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 mutex_init(&data->lock);

 dev_info(&client->dev, "%s chip found\n", client->name);


 data->attrs.attrs = ics932s401_attr;
 err = sysfs_create_group(&client->dev.kobj, &data->attrs);
 if (err)
  goto exit_free;

 return 0;

exit_free:
 kfree(data);
exit:
 return err;
}
