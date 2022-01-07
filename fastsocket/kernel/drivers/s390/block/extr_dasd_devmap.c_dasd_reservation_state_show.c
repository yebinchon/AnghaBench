
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {int flags; } ;
typedef int ssize_t ;


 int DASD_FLAG_IS_RESERVED ;
 int DASD_FLAG_LOCK_STOLEN ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int PAGE_SIZE ;
 struct dasd_device* dasd_device_from_cdev (int ) ;
 int dasd_put_device (struct dasd_device*) ;
 int snprintf (char*,int ,char*) ;
 scalar_t__ test_bit (int ,int *) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t dasd_reservation_state_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct dasd_device *device;
 int rc = 0;

 device = dasd_device_from_cdev(to_ccwdev(dev));
 if (IS_ERR(device))
  return snprintf(buf, PAGE_SIZE, "none\n");

 if (test_bit(DASD_FLAG_IS_RESERVED, &device->flags))
  rc = snprintf(buf, PAGE_SIZE, "reserved\n");
 else if (test_bit(DASD_FLAG_LOCK_STOLEN, &device->flags))
  rc = snprintf(buf, PAGE_SIZE, "lost\n");
 else
  rc = snprintf(buf, PAGE_SIZE, "none\n");
 dasd_put_device(device);
 return rc;
}
