
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mISDNdevice {int id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct mISDNdevice* dev_to_mISDN (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t _show_id(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct mISDNdevice *mdev = dev_to_mISDN(dev);

 if (!mdev)
  return -ENODEV;
 return sprintf(buf, "%d\n", mdev->id);
}
