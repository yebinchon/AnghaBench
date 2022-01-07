
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dme1737_data {int has_fan; int has_pwm; scalar_t__ type; int client; } ;
struct device {int kobj; } ;
struct TYPE_2__ {int attr; } ;


 int ARRAY_SIZE (int *) ;
 TYPE_1__ dev_attr_name ;
 struct dme1737_data* dev_get_drvdata (struct device*) ;
 scalar_t__ dme1737 ;
 int * dme1737_fan_group ;
 int dme1737_group ;
 int dme1737_misc_group ;
 int * dme1737_pwm_group ;
 int ** dme1737_pwm_misc_attr ;
 int dme1737_vid_group ;
 scalar_t__ sch5027 ;
 int sysfs_remove_file (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void dme1737_remove_files(struct device *dev)
{
 struct dme1737_data *data = dev_get_drvdata(dev);
 int ix;

 for (ix = 0; ix < ARRAY_SIZE(dme1737_fan_group); ix++) {
  if (data->has_fan & (1 << ix)) {
   sysfs_remove_group(&dev->kobj,
        &dme1737_fan_group[ix]);
  }
 }

 for (ix = 0; ix < ARRAY_SIZE(dme1737_pwm_group); ix++) {
  if (data->has_pwm & (1 << ix)) {
   sysfs_remove_group(&dev->kobj,
        &dme1737_pwm_group[ix]);
   if (data->type != sch5027 && ix < 3) {
    sysfs_remove_file(&dev->kobj,
        dme1737_pwm_misc_attr[ix]);
   }
  }
 }

 if (data->type != sch5027) {
  sysfs_remove_group(&dev->kobj, &dme1737_misc_group);
 }
 if (data->type == dme1737) {
  sysfs_remove_group(&dev->kobj, &dme1737_vid_group);
 }

 sysfs_remove_group(&dev->kobj, &dme1737_group);

 if (!data->client) {
  sysfs_remove_file(&dev->kobj, &dev_attr_name.attr);
 }
}
