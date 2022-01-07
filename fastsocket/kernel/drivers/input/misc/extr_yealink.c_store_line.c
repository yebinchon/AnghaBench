
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yealink_dev {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t ENODEV ;
 struct yealink_dev* dev_get_drvdata (struct device*) ;
 int down_write (int *) ;
 int setChar (struct yealink_dev*,int ,char const) ;
 int sysfs_rwsema ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t store_line(struct device *dev, const char *buf, size_t count,
  int el, size_t len)
{
 struct yealink_dev *yld;
 int i;

 down_write(&sysfs_rwsema);
 yld = dev_get_drvdata(dev);
 if (yld == ((void*)0)) {
  up_write(&sysfs_rwsema);
  return -ENODEV;
 }

 if (len > count)
  len = count;
 for (i = 0; i < len; i++)
  setChar(yld, el++, buf[i]);

 up_write(&sysfs_rwsema);
 return count;
}
