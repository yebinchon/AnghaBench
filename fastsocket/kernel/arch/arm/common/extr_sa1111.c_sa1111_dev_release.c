
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_dev {int res; } ;
struct device {int dummy; } ;


 struct sa1111_dev* SA1111_DEV (struct device*) ;
 int kfree (struct sa1111_dev*) ;
 int release_resource (int *) ;

__attribute__((used)) static void sa1111_dev_release(struct device *_dev)
{
 struct sa1111_dev *dev = SA1111_DEV(_dev);

 release_resource(&dev->res);
 kfree(dev);
}
