
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atk_data {scalar_t__ disable_ec; int hwmon_dev; } ;
struct acpi_device {int dev; struct atk_data* driver_data; } ;


 scalar_t__ atk_ec_ctl (struct atk_data*,int ) ;
 int atk_free_sensors (struct atk_data*) ;
 int atk_remove_files (struct atk_data*) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int hwmon_device_unregister (int ) ;
 int kfree (struct atk_data*) ;

__attribute__((used)) static int atk_remove(struct acpi_device *device, int type)
{
 struct atk_data *data = device->driver_data;
 dev_dbg(&device->dev, "removing...\n");

 device->driver_data = ((void*)0);

 atk_remove_files(data);
 atk_free_sensors(data);
 hwmon_device_unregister(data->hwmon_dev);

 if (data->disable_ec) {
  if (atk_ec_ctl(data, 0))
   dev_err(&device->dev, "Failed to disable EC\n");
 }

 kfree(data);

 return 0;
}
