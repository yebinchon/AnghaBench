
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_unregister (struct device*) ;
 int put_device (struct device*) ;

__attribute__((used)) static void dcssblk_unregister_callback(struct device *dev)
{
 device_unregister(dev);
 put_device(dev);
}
