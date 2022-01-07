
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yealink_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t ENODEV ;
 struct yealink_dev* dev_get_drvdata (struct device*) ;
 int down_write (int *) ;
 int sysfs_rwsema ;
 int up_write (int *) ;
 int yealink_set_ringtone (struct yealink_dev*,char*,size_t) ;

__attribute__((used)) static ssize_t store_ringtone(struct device *dev,
  struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct yealink_dev *yld;

 down_write(&sysfs_rwsema);
 yld = dev_get_drvdata(dev);
 if (yld == ((void*)0)) {
  up_write(&sysfs_rwsema);
  return -ENODEV;
 }


 yealink_set_ringtone(yld, (char *)buf, count);
 up_write(&sysfs_rwsema);
 return count;
}
