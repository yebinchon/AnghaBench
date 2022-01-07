
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dme1737_data {scalar_t__ type; int has_fan; int has_pwm; int config; int * pwm_config; int client; } ;
struct device {int kobj; } ;
struct TYPE_2__ {int attr; } ;


 int ARRAY_SIZE (int *) ;
 int PWM_EN_FROM_REG (int ) ;
 int S_IRUGO ;
 int S_IWUSR ;
 TYPE_1__ dev_attr_name ;
 struct dme1737_data* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 scalar_t__ dme1737 ;
 int dme1737_chmod_file (struct device*,int *,int) ;
 int dme1737_chmod_group (struct device*,int *,int) ;
 int * dme1737_fan_group ;
 int dme1737_group ;
 int dme1737_misc_group ;
 int ** dme1737_pwm_chmod_attr ;
 int * dme1737_pwm_chmod_group ;
 int * dme1737_pwm_group ;
 int ** dme1737_pwm_misc_attr ;
 int dme1737_remove_files (struct device*) ;
 int dme1737_vid_group ;
 int dme1737_zone_chmod_group ;
 scalar_t__ sch5027 ;
 int sysfs_create_file (int *,int *) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int dme1737_create_files(struct device *dev)
{
 struct dme1737_data *data = dev_get_drvdata(dev);
 int err, ix;


 if (!data->client &&
     (err = sysfs_create_file(&dev->kobj, &dev_attr_name.attr))) {
  goto exit;
 }


 if ((err = sysfs_create_group(&dev->kobj, &dme1737_group))) {
  goto exit_remove;
 }


 if ((data->type != sch5027) &&
     (err = sysfs_create_group(&dev->kobj,
          &dme1737_misc_group))) {
  goto exit_remove;
 }


 if ((data->type == dme1737) &&
     (err = sysfs_create_group(&dev->kobj,
          &dme1737_vid_group))) {
  goto exit_remove;
 }


 for (ix = 0; ix < ARRAY_SIZE(dme1737_fan_group); ix++) {
  if (data->has_fan & (1 << ix)) {
   if ((err = sysfs_create_group(&dev->kobj,
      &dme1737_fan_group[ix]))) {
    goto exit_remove;
   }
  }
 }


 for (ix = 0; ix < ARRAY_SIZE(dme1737_pwm_group); ix++) {
  if (data->has_pwm & (1 << ix)) {
   if ((err = sysfs_create_group(&dev->kobj,
      &dme1737_pwm_group[ix]))) {
    goto exit_remove;
   }
   if (data->type != sch5027 && ix < 3 &&
       (err = sysfs_create_file(&dev->kobj,
      dme1737_pwm_misc_attr[ix]))) {
    goto exit_remove;
   }
  }
 }



 if (data->config & 0x02) {
  dev_info(dev, "Device is locked. Some attributes "
    "will be read-only.\n");
 } else {

  dme1737_chmod_group(dev, &dme1737_zone_chmod_group,
        S_IRUGO | S_IWUSR);


  if (data->type != sch5027) {
   dme1737_chmod_group(dev, &dme1737_misc_group,
         S_IRUGO | S_IWUSR);
  }


  for (ix = 0; ix < ARRAY_SIZE(dme1737_pwm_chmod_group); ix++) {
   if (data->has_pwm & (1 << ix)) {
    dme1737_chmod_group(dev,
      &dme1737_pwm_chmod_group[ix],
      S_IRUGO | S_IWUSR);
    if (data->type != sch5027 && ix < 3) {
     dme1737_chmod_file(dev,
      dme1737_pwm_misc_attr[ix],
      S_IRUGO | S_IWUSR);
    }
   }
  }


  for (ix = 0; ix < 3; ix++) {
   if ((data->has_pwm & (1 << ix)) &&
       (PWM_EN_FROM_REG(data->pwm_config[ix]) == 1)) {
    dme1737_chmod_file(dev,
      dme1737_pwm_chmod_attr[ix],
      S_IRUGO | S_IWUSR);
   }
  }
 }

 return 0;

exit_remove:
 dme1737_remove_files(dev);
exit:
 return err;
}
