
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timed_gpio_platform_data {int num_gpios; } ;
struct timed_gpio_data {int dev; } ;
struct TYPE_2__ {struct timed_gpio_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int kfree (struct timed_gpio_data*) ;
 struct timed_gpio_data* platform_get_drvdata (struct platform_device*) ;
 int timed_output_dev_unregister (int *) ;

__attribute__((used)) static int timed_gpio_remove(struct platform_device *pdev)
{
 struct timed_gpio_platform_data *pdata = pdev->dev.platform_data;
 struct timed_gpio_data *gpio_data = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < pdata->num_gpios; i++)
  timed_output_dev_unregister(&gpio_data[i].dev);

 kfree(gpio_data);

 return 0;
}
