
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ngpio; } ;
struct ucb1400_gpio {TYPE_2__ gc; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {int (* gpio_teardown ) (int *,int ) ;} ;


 int gpiochip_remove (TYPE_2__*) ;
 struct ucb1400_gpio* platform_get_drvdata (struct platform_device*) ;
 int stub1 (int *,int ) ;
 TYPE_1__* ucbdata ;

__attribute__((used)) static int ucb1400_gpio_remove(struct platform_device *dev)
{
 int err = 0;
 struct ucb1400_gpio *ucb = platform_get_drvdata(dev);

 if (ucbdata && ucbdata->gpio_teardown) {
  err = ucbdata->gpio_teardown(&dev->dev, ucb->gc.ngpio);
  if (err)
   return err;
 }

 err = gpiochip_remove(&ucb->gc);
 return err;
}
