
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct TYPE_3__ {struct ds2782_info* name; } ;
struct ds2782_info {TYPE_1__ battery; struct i2c_client* client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int battery_id ;
 int battery_lock ;
 int dev_err (int *,char*) ;
 int ds2782_power_supply_init (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct ds2782_info*) ;
 int idr_get_new (int *,struct i2c_client*,int*) ;
 int idr_pre_get (int *,int ) ;
 int idr_remove (int *,int) ;
 struct ds2782_info* kasprintf (int ,char*,int) ;
 int kfree (struct ds2782_info*) ;
 struct ds2782_info* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_register (int *,TYPE_1__*) ;

__attribute__((used)) static int ds2782_battery_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct ds2782_info *info;
 int ret;
 int num;


 ret = idr_pre_get(&battery_id, GFP_KERNEL);
 if (ret == 0) {
  ret = -ENOMEM;
  goto fail_id;
 }

 mutex_lock(&battery_lock);
 ret = idr_get_new(&battery_id, client, &num);
 mutex_unlock(&battery_lock);
 if (ret < 0)
  goto fail_id;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info) {
  ret = -ENOMEM;
  goto fail_info;
 }

 info->battery.name = kasprintf(GFP_KERNEL, "ds2782-%d", num);
 if (!info->battery.name) {
  ret = -ENOMEM;
  goto fail_name;
 }

 i2c_set_clientdata(client, info);
 info->client = client;
 ds2782_power_supply_init(&info->battery);

 ret = power_supply_register(&client->dev, &info->battery);
 if (ret) {
  dev_err(&client->dev, "failed to register battery\n");
  goto fail_register;
 }

 return 0;

fail_register:
 kfree(info->battery.name);
fail_name:
 i2c_set_clientdata(client, info);
 kfree(info);
fail_info:
 mutex_lock(&battery_lock);
 idr_remove(&battery_id, num);
 mutex_unlock(&battery_lock);
fail_id:
 return ret;
}
