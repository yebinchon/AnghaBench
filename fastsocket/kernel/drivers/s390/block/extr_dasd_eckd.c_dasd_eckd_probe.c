
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dummy; } ;


 int CCWDEV_ALLOW_FORCE ;
 int CCWDEV_DO_MULTIPATH ;
 int CCWDEV_DO_PATHGROUP ;
 int DBF_EVENT_DEVID (int ,struct ccw_device*,char*,char*) ;
 int DBF_WARNING ;
 int ccw_device_set_options (struct ccw_device*,int) ;
 int dasd_eckd_discipline ;
 int dasd_generic_probe (struct ccw_device*,int *) ;

__attribute__((used)) static int
dasd_eckd_probe (struct ccw_device *cdev)
{
 int ret;


 ret = ccw_device_set_options(cdev, CCWDEV_ALLOW_FORCE |
         CCWDEV_DO_PATHGROUP | CCWDEV_DO_MULTIPATH);
 if (ret) {
  DBF_EVENT_DEVID(DBF_WARNING, cdev, "%s",
    "dasd_eckd_probe: could not set "
    "ccw-device options");
  return ret;
 }
 ret = dasd_generic_probe(cdev, &dasd_eckd_discipline);
 return ret;
}
