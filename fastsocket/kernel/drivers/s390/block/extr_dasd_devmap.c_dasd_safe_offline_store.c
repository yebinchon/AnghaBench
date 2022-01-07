
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {int flags; } ;
struct ccw_device {int dummy; } ;
typedef int ssize_t ;


 int DASD_FLAG_OFFLINE ;
 int DASD_FLAG_SAFE_OFFLINE ;
 int DASD_FLAG_SAFE_OFFLINE_RUNNING ;
 int EBUSY ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int PTR_ERR (struct dasd_device*) ;
 int ccw_device_set_offline (struct ccw_device*) ;
 struct dasd_device* dasd_device_from_cdev (struct ccw_device*) ;
 int dasd_put_device (struct dasd_device*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 struct ccw_device* to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t
dasd_safe_offline_store(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct dasd_device *device;
 int rc;

 device = dasd_device_from_cdev(cdev);
 if (IS_ERR(device)) {
  rc = PTR_ERR(device);
  goto out;
 }

 if (test_bit(DASD_FLAG_OFFLINE, &device->flags) ||
     test_bit(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {

  dasd_put_device(device);
  rc = -EBUSY;
  goto out;
 }

 set_bit(DASD_FLAG_SAFE_OFFLINE, &device->flags);
 dasd_put_device(device);

 rc = ccw_device_set_offline(cdev);

out:
 return rc ? rc : count;
}
