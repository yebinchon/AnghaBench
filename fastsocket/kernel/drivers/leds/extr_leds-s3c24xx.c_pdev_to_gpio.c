
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_gpio_led {int dummy; } ;
struct platform_device {int dummy; } ;


 struct s3c24xx_gpio_led* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static inline struct s3c24xx_gpio_led *pdev_to_gpio(struct platform_device *dev)
{
 return platform_get_drvdata(dev);
}
