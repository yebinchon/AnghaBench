
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int put_device (int *) ;

void platform_device_put(struct platform_device *pdev)
{
 if (pdev)
  put_device(&pdev->dev);
}
