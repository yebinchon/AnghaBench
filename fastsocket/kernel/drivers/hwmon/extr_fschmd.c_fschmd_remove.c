
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct TYPE_5__ {scalar_t__ minor; } ;
struct fschmd_data {size_t kind; int kref; scalar_t__ hwmon_dev; int watchdog_lock; int * client; int list; scalar_t__ watchdog_is_open; TYPE_1__ watchdog_miscdev; } ;
struct TYPE_8__ {int dev_attr; } ;
struct TYPE_7__ {int dev_attr; } ;
struct TYPE_6__ {int dev_attr; } ;


 int* FSCHMD_NO_FAN_SENSORS ;
 int* FSCHMD_NO_TEMP_SENSORS ;
 int* FSCHMD_NO_VOLT_SENSORS ;
 int dev_attr_alert_led ;
 int dev_warn (int *,char*) ;
 int device_remove_file (int *,int *) ;
 TYPE_4__* fschmd_attr ;
 TYPE_3__* fschmd_fan_attr ;
 int fschmd_release_resources ;
 TYPE_2__* fschmd_temp_attr ;
 int hwmon_device_unregister (scalar_t__) ;
 struct fschmd_data* i2c_get_clientdata (struct i2c_client*) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int misc_deregister (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int watchdog_data_mutex ;
 int watchdog_stop (struct fschmd_data*) ;

__attribute__((used)) static int fschmd_remove(struct i2c_client *client)
{
 struct fschmd_data *data = i2c_get_clientdata(client);
 int i;


 if (data->watchdog_miscdev.minor) {
  misc_deregister(&data->watchdog_miscdev);
  if (data->watchdog_is_open) {
   dev_warn(&client->dev,
    "i2c client detached with watchdog open! "
    "Stopping watchdog.\n");
   watchdog_stop(data);
  }
  mutex_lock(&watchdog_data_mutex);
  list_del(&data->list);
  mutex_unlock(&watchdog_data_mutex);

  mutex_lock(&data->watchdog_lock);
  data->client = ((void*)0);
  mutex_unlock(&data->watchdog_lock);
 }



 if (data->hwmon_dev)
  hwmon_device_unregister(data->hwmon_dev);

 device_remove_file(&client->dev, &dev_attr_alert_led);
 for (i = 0; i < (FSCHMD_NO_VOLT_SENSORS[data->kind]); i++)
  device_remove_file(&client->dev, &fschmd_attr[i].dev_attr);
 for (i = 0; i < (FSCHMD_NO_TEMP_SENSORS[data->kind] * 4); i++)
  device_remove_file(&client->dev,
     &fschmd_temp_attr[i].dev_attr);
 for (i = 0; i < (FSCHMD_NO_FAN_SENSORS[data->kind] * 5); i++)
  device_remove_file(&client->dev,
     &fschmd_fan_attr[i].dev_attr);

 mutex_lock(&watchdog_data_mutex);
 kref_put(&data->kref, fschmd_release_resources);
 mutex_unlock(&watchdog_data_mutex);

 return 0;
}
