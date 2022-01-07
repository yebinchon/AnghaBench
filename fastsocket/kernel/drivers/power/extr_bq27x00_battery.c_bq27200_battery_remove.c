
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct TYPE_2__ {struct bq27x00_device_info* name; } ;
struct bq27x00_device_info {int id; TYPE_1__ bat; } ;


 int battery_id ;
 int battery_mutex ;
 struct bq27x00_device_info* i2c_get_clientdata (struct i2c_client*) ;
 int idr_remove (int *,int ) ;
 int kfree (struct bq27x00_device_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_unregister (TYPE_1__*) ;

__attribute__((used)) static int bq27200_battery_remove(struct i2c_client *client)
{
 struct bq27x00_device_info *di = i2c_get_clientdata(client);

 power_supply_unregister(&di->bat);

 kfree(di->bat.name);

 mutex_lock(&battery_mutex);
 idr_remove(&battery_id, di->id);
 mutex_unlock(&battery_mutex);

 kfree(di);

 return 0;
}
