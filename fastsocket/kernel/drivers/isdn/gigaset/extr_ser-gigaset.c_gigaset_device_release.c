
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int resource; } ;
struct device {int platform_data; } ;


 int kfree (int ) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static void gigaset_device_release(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);



 kfree(dev->platform_data);
 kfree(pdev->resource);
}
