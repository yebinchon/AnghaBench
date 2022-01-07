
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct TYPE_2__ {struct ds2782_info* name; } ;
struct ds2782_info {int id; TYPE_1__ battery; } ;


 int battery_id ;
 int battery_lock ;
 struct ds2782_info* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,struct ds2782_info*) ;
 int idr_remove (int *,int ) ;
 int kfree (struct ds2782_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_unregister (TYPE_1__*) ;

__attribute__((used)) static int ds2782_battery_remove(struct i2c_client *client)
{
 struct ds2782_info *info = i2c_get_clientdata(client);

 power_supply_unregister(&info->battery);
 kfree(info->battery.name);

 mutex_lock(&battery_lock);
 idr_remove(&battery_id, info->id);
 mutex_unlock(&battery_lock);

 i2c_set_clientdata(client, info);

 kfree(info);
 return 0;
}
