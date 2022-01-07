
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urdev {int reclen; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int sprintf (char*,char*,int ) ;
 int to_ccwdev (struct device*) ;
 struct urdev* urdev_get_from_cdev (int ) ;
 int urdev_put (struct urdev*) ;

__attribute__((used)) static ssize_t ur_attr_reclen_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct urdev *urd;
 int rc;

 urd = urdev_get_from_cdev(to_ccwdev(dev));
 if (!urd)
  return -ENODEV;
 rc = sprintf(buf, "%zu\n", urd->reclen);
 urdev_put(urd);
 return rc;
}
