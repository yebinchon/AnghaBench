
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {int state; } ;
typedef int ssize_t ;
 int IS_ERR (struct dasd_device*) ;
 int PAGE_SIZE ;
 struct dasd_device* dasd_device_from_cdev (int ) ;
 int dasd_put_device (struct dasd_device*) ;
 int snprintf (char*,int ,char*) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t
dasd_device_status_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct dasd_device *device;
 ssize_t len;

 device = dasd_device_from_cdev(to_ccwdev(dev));
 if (!IS_ERR(device)) {
  switch (device->state) {
  case 131:
   len = snprintf(buf, PAGE_SIZE, "new\n");
   break;
  case 132:
   len = snprintf(buf, PAGE_SIZE, "detected\n");
   break;
  case 133:
   len = snprintf(buf, PAGE_SIZE, "basic\n");
   break;
  case 128:
   len = snprintf(buf, PAGE_SIZE, "unformatted\n");
   break;
  case 129:
   len = snprintf(buf, PAGE_SIZE, "ready\n");
   break;
  case 130:
   len = snprintf(buf, PAGE_SIZE, "online\n");
   break;
  default:
   len = snprintf(buf, PAGE_SIZE, "no stat\n");
   break;
  }
  dasd_put_device(device);
 } else
  len = snprintf(buf, PAGE_SIZE, "unknown\n");
 return len;
}
