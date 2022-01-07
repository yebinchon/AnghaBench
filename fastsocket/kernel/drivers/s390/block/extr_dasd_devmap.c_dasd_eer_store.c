
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_devmap {int device; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct dasd_devmap*) ;
 int PTR_ERR (struct dasd_devmap*) ;
 struct dasd_devmap* dasd_devmap_from_cdev (int ) ;
 int dasd_eer_disable (int ) ;
 int dasd_eer_enable (int ) ;
 int simple_strtoul (char const*,char**,int ) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t
dasd_eer_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct dasd_devmap *devmap;
 int val, rc;
 char *endp;

 devmap = dasd_devmap_from_cdev(to_ccwdev(dev));
 if (IS_ERR(devmap))
  return PTR_ERR(devmap);
 if (!devmap->device)
  return -ENODEV;

 val = simple_strtoul(buf, &endp, 0);
 if (((endp + 1) < (buf + count)) || (val > 1))
  return -EINVAL;

 if (val) {
  rc = dasd_eer_enable(devmap->device);
  if (rc)
   return rc;
 } else
  dasd_eer_disable(devmap->device);
 return count;
}
