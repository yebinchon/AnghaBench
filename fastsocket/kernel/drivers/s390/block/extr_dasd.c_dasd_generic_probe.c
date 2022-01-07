
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_discipline {int dummy; } ;
struct ccw_device {int dev; int * handler; } ;


 int DASD_FEATURE_INITIAL_ONLINE ;
 int DBF_EVENT_DEVID (int ,struct ccw_device*,char*,char*) ;
 int DBF_WARNING ;
 int async_schedule (int ,struct ccw_device*) ;
 int dasd_add_sysfs_files (struct ccw_device*) ;
 scalar_t__ dasd_autodetect ;
 scalar_t__ dasd_busid_known (int ) ;
 int dasd_generic_auto_online ;
 scalar_t__ dasd_get_feature (struct ccw_device*,int ) ;
 int dasd_int_handler ;
 int dev_name (int *) ;

int dasd_generic_probe(struct ccw_device *cdev,
         struct dasd_discipline *discipline)
{
 int ret;

 ret = dasd_add_sysfs_files(cdev);
 if (ret) {
  DBF_EVENT_DEVID(DBF_WARNING, cdev, "%s",
    "dasd_generic_probe: could not add "
    "sysfs entries");
  return ret;
 }
 cdev->handler = &dasd_int_handler;






 if ((dasd_get_feature(cdev, DASD_FEATURE_INITIAL_ONLINE) > 0 ) ||
     (dasd_autodetect && dasd_busid_known(dev_name(&cdev->dev)) != 0))
  async_schedule(dasd_generic_auto_online, cdev);
 return 0;
}
