
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char* label; int ngpio; int can_sleep; int set; int get; int direction_output; int direction_input; int owner; scalar_t__ base; } ;
struct ucb1400_gpio {TYPE_3__ gc; } ;
struct TYPE_5__ {struct ucb1400_gpio* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int (* gpio_setup ) (TYPE_2__*,int) ;scalar_t__ gpio_offset; } ;


 int EINVAL ;
 int THIS_MODULE ;
 int gpiochip_add (TYPE_3__*) ;
 int platform_set_drvdata (struct platform_device*,struct ucb1400_gpio*) ;
 int stub1 (TYPE_2__*,int) ;
 int ucb1400_gpio_dir_in ;
 int ucb1400_gpio_dir_out ;
 int ucb1400_gpio_get ;
 int ucb1400_gpio_set ;
 TYPE_1__* ucbdata ;

__attribute__((used)) static int ucb1400_gpio_probe(struct platform_device *dev)
{
 struct ucb1400_gpio *ucb = dev->dev.platform_data;
 int err = 0;

 if (!(ucbdata && ucbdata->gpio_offset)) {
  err = -EINVAL;
  goto err;
 }

 platform_set_drvdata(dev, ucb);

 ucb->gc.label = "ucb1400_gpio";
 ucb->gc.base = ucbdata->gpio_offset;
 ucb->gc.ngpio = 10;
 ucb->gc.owner = THIS_MODULE;

 ucb->gc.direction_input = ucb1400_gpio_dir_in;
 ucb->gc.direction_output = ucb1400_gpio_dir_out;
 ucb->gc.get = ucb1400_gpio_get;
 ucb->gc.set = ucb1400_gpio_set;
 ucb->gc.can_sleep = 1;

 err = gpiochip_add(&ucb->gc);
 if (err)
  goto err;

 if (ucbdata && ucbdata->gpio_setup)
  err = ucbdata->gpio_setup(&dev->dev, ucb->gc.ngpio);

err:
 return err;

}
