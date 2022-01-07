
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct c2port_device {int name; int dev; int mutex; int flash_access; int access; } ;
typedef int ssize_t ;


 int EBUSY ;
 int __c2port_write_flash_erase (struct c2port_device*) ;
 int dev_err (int ,char*,int ) ;
 struct c2port_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t c2port_store_flash_erase(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct c2port_device *c2dev = dev_get_drvdata(dev);
 int ret;


 if (!c2dev->access || !c2dev->flash_access)
  return -EBUSY;

 mutex_lock(&c2dev->mutex);
 ret = __c2port_write_flash_erase(c2dev);
 mutex_unlock(&c2dev->mutex);

 if (ret < 0) {
  dev_err(c2dev->dev, "cannot erase %s flash\n", c2dev->name);
  return ret;
 }

 return count;
}
