
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amba_device {int dev; } ;


 int device_unregister (int *) ;

void amba_device_unregister(struct amba_device *dev)
{
 device_unregister(&dev->dev);
}
