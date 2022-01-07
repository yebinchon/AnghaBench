
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_gpio_led {int cdev; } ;
struct platform_device {int dummy; } ;


 int kfree (struct s3c24xx_gpio_led*) ;
 int led_classdev_unregister (int *) ;
 struct s3c24xx_gpio_led* pdev_to_gpio (struct platform_device*) ;

__attribute__((used)) static int s3c24xx_led_remove(struct platform_device *dev)
{
 struct s3c24xx_gpio_led *led = pdev_to_gpio(dev);

 led_classdev_unregister(&led->cdev);
 kfree(led);

 return 0;
}
