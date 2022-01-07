
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int flags; } ;
struct device {int dummy; } ;
typedef int pm_message_t ;


 int LED_CORE_SUSPENDRESUME ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int led_classdev_suspend (struct led_classdev*) ;

__attribute__((used)) static int led_suspend(struct device *dev, pm_message_t state)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);

 if (led_cdev->flags & LED_CORE_SUSPENDRESUME)
  led_classdev_suspend(led_cdev);

 return 0;
}
