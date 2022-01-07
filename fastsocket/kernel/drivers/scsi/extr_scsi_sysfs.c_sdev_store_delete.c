
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int device_schedule_callback (struct device*,int ) ;
 int sdev_store_delete_callback ;

__attribute__((used)) static ssize_t
sdev_store_delete(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 int rc;




 rc = device_schedule_callback(dev, sdev_store_delete_callback);
 if (rc)
  count = rc;
 return count;
}
