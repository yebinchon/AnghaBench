
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomo_dev {int dev; } ;


 int led_classdev_register (int *,int *) ;
 int led_classdev_unregister (int *) ;
 int locomo_led0 ;
 int locomo_led1 ;

__attribute__((used)) static int locomoled_probe(struct locomo_dev *ldev)
{
 int ret;

 ret = led_classdev_register(&ldev->dev, &locomo_led0);
 if (ret < 0)
  return ret;

 ret = led_classdev_register(&ldev->dev, &locomo_led1);
 if (ret < 0)
  led_classdev_unregister(&locomo_led0);

 return ret;
}
