
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int input_dev; int touch_dev; int battery_dev; } ;
struct device {int dummy; } ;


 struct wm97xx* dev_get_drvdata (struct device*) ;
 int input_unregister_device (int ) ;
 int kfree (struct wm97xx*) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static int wm97xx_remove(struct device *dev)
{
 struct wm97xx *wm = dev_get_drvdata(dev);

 platform_device_unregister(wm->battery_dev);
 platform_device_unregister(wm->touch_dev);
 input_unregister_device(wm->input_dev);
 kfree(wm);

 return 0;
}
