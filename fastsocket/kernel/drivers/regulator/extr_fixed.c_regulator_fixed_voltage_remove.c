
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {struct fixed_voltage_data* name; } ;
struct fixed_voltage_data {TYPE_1__ desc; int gpio; int dev; } ;


 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int kfree (struct fixed_voltage_data*) ;
 struct fixed_voltage_data* platform_get_drvdata (struct platform_device*) ;
 int regulator_unregister (int ) ;

__attribute__((used)) static int regulator_fixed_voltage_remove(struct platform_device *pdev)
{
 struct fixed_voltage_data *drvdata = platform_get_drvdata(pdev);

 regulator_unregister(drvdata->dev);
 if (gpio_is_valid(drvdata->gpio))
  gpio_free(drvdata->gpio);
 kfree(drvdata->desc.name);
 kfree(drvdata);

 return 0;
}
