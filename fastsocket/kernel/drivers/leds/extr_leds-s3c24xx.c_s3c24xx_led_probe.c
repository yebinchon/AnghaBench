
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct s3c24xx_led_platdata {int flags; int gpio; int name; int def_trigger; } ;
struct TYPE_5__ {int flags; int name; int default_trigger; int brightness_set; } ;
struct s3c24xx_gpio_led {TYPE_2__ cdev; struct s3c24xx_led_platdata* pdata; } ;
struct TYPE_4__ {struct s3c24xx_led_platdata* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_CORE_SUSPENDRESUME ;
 int S3C2410_GPIO_INPUT ;
 int S3C2410_GPIO_OUTPUT ;
 int S3C24XX_LEDF_TRISTATE ;
 int dev_err (TYPE_1__*,char*) ;
 int kfree (struct s3c24xx_gpio_led*) ;
 struct s3c24xx_gpio_led* kzalloc (int,int ) ;
 int led_classdev_register (TYPE_1__*,TYPE_2__*) ;
 int platform_set_drvdata (struct platform_device*,struct s3c24xx_gpio_led*) ;
 int s3c2410_gpio_cfgpin (int ,int ) ;
 int s3c2410_gpio_pullup (int ,int ) ;
 int s3c2410_gpio_setpin (int ,int ) ;
 int s3c24xx_led_set ;

__attribute__((used)) static int s3c24xx_led_probe(struct platform_device *dev)
{
 struct s3c24xx_led_platdata *pdata = dev->dev.platform_data;
 struct s3c24xx_gpio_led *led;
 int ret;

 led = kzalloc(sizeof(struct s3c24xx_gpio_led), GFP_KERNEL);
 if (led == ((void*)0)) {
  dev_err(&dev->dev, "No memory for device\n");
  return -ENOMEM;
 }

 platform_set_drvdata(dev, led);

 led->cdev.brightness_set = s3c24xx_led_set;
 led->cdev.default_trigger = pdata->def_trigger;
 led->cdev.name = pdata->name;
 led->cdev.flags |= LED_CORE_SUSPENDRESUME;

 led->pdata = pdata;



 if (pdata->flags & S3C24XX_LEDF_TRISTATE) {
  s3c2410_gpio_setpin(pdata->gpio, 0);
  s3c2410_gpio_cfgpin(pdata->gpio, S3C2410_GPIO_INPUT);
 } else {
  s3c2410_gpio_pullup(pdata->gpio, 0);
  s3c2410_gpio_setpin(pdata->gpio, 0);
  s3c2410_gpio_cfgpin(pdata->gpio, S3C2410_GPIO_OUTPUT);
 }



 ret = led_classdev_register(&dev->dev, &led->cdev);
 if (ret < 0) {
  dev_err(&dev->dev, "led_classdev_register failed\n");
  kfree(led);
  return ret;
 }

 return 0;
}
