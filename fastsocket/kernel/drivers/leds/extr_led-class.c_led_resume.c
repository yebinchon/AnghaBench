
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int flags; } ;
struct device {int dummy; } ;


 int LED_CORE_SUSPENDRESUME ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int led_classdev_resume (struct led_classdev*) ;

__attribute__((used)) static int led_resume(struct device *dev)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);

 if (led_cdev->flags & LED_CORE_SUSPENDRESUME)
  led_classdev_resume(led_cdev);

 return 0;
}
