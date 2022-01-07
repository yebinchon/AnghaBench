
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct atk_data {int hwmon_dev; TYPE_1__* acpi_dev; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int atk_create_files (struct atk_data*) ;
 int atk_remove_files (struct atk_data*) ;
 int dev_dbg (struct device*,char*) ;
 int hwmon_device_register (struct device*) ;
 int hwmon_device_unregister (int ) ;

__attribute__((used)) static int atk_register_hwmon(struct atk_data *data)
{
 struct device *dev = &data->acpi_dev->dev;
 int err;

 dev_dbg(dev, "registering hwmon device\n");
 data->hwmon_dev = hwmon_device_register(dev);
 if (IS_ERR(data->hwmon_dev))
  return PTR_ERR(data->hwmon_dev);

 dev_dbg(dev, "populating sysfs directory\n");
 err = atk_create_files(data);
 if (err)
  goto remove;

 return 0;
remove:

 atk_remove_files(data);
 hwmon_device_unregister(data->hwmon_dev);
 return err;
}
