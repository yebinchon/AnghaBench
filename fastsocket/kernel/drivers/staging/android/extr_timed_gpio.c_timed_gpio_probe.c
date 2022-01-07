
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timed_gpio_platform_data {int num_gpios; struct timed_gpio* gpios; } ;
struct TYPE_6__ {int enable; int get_time; int name; } ;
struct TYPE_7__ {int function; } ;
struct timed_gpio_data {int active_low; int gpio; int max_timeout; TYPE_2__ dev; int lock; TYPE_4__ timer; } ;
struct timed_gpio {int active_low; int max_timeout; int gpio; int name; } ;
struct TYPE_5__ {struct timed_gpio_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int CLOCK_MONOTONIC ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_REL ;
 int gpio_direction_output (int ,int ) ;
 int gpio_enable ;
 int gpio_get_time ;
 int gpio_timer_func ;
 int hrtimer_init (TYPE_4__*,int ,int ) ;
 int kfree (struct timed_gpio_data*) ;
 struct timed_gpio_data* kzalloc (int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct timed_gpio_data*) ;
 int spin_lock_init (int *) ;
 int timed_output_dev_register (TYPE_2__*) ;
 int timed_output_dev_unregister (TYPE_2__*) ;

__attribute__((used)) static int timed_gpio_probe(struct platform_device *pdev)
{
 struct timed_gpio_platform_data *pdata = pdev->dev.platform_data;
 struct timed_gpio *cur_gpio;
 struct timed_gpio_data *gpio_data, *gpio_dat;
 int i, j, ret = 0;

 if (!pdata)
  return -EBUSY;

 gpio_data = kzalloc(sizeof(struct timed_gpio_data) * pdata->num_gpios,
   GFP_KERNEL);
 if (!gpio_data)
  return -ENOMEM;

 for (i = 0; i < pdata->num_gpios; i++) {
  cur_gpio = &pdata->gpios[i];
  gpio_dat = &gpio_data[i];

  hrtimer_init(&gpio_dat->timer, CLOCK_MONOTONIC,
    HRTIMER_MODE_REL);
  gpio_dat->timer.function = gpio_timer_func;
  spin_lock_init(&gpio_dat->lock);

  gpio_dat->dev.name = cur_gpio->name;
  gpio_dat->dev.get_time = gpio_get_time;
  gpio_dat->dev.enable = gpio_enable;
  ret = timed_output_dev_register(&gpio_dat->dev);
  if (ret < 0) {
   for (j = 0; j < i; j++)
    timed_output_dev_unregister(&gpio_data[i].dev);
   kfree(gpio_data);
   return ret;
  }

  gpio_dat->gpio = cur_gpio->gpio;
  gpio_dat->max_timeout = cur_gpio->max_timeout;
  gpio_dat->active_low = cur_gpio->active_low;
  gpio_direction_output(gpio_dat->gpio, gpio_dat->active_low);
 }

 platform_set_drvdata(pdev, gpio_data);

 return 0;
}
