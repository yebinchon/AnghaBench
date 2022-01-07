
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct wm831x_status {TYPE_1__ cdev; } ;
struct platform_device {int dummy; } ;


 int dev_attr_src ;
 int device_remove_file (int ,int *) ;
 int kfree (struct wm831x_status*) ;
 int led_classdev_unregister (TYPE_1__*) ;
 struct wm831x_status* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int wm831x_status_remove(struct platform_device *pdev)
{
 struct wm831x_status *drvdata = platform_get_drvdata(pdev);

 device_remove_file(drvdata->cdev.dev, &dev_attr_src);
 led_classdev_unregister(&drvdata->cdev);
 kfree(drvdata);

 return 0;
}
