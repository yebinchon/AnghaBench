
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm8400 {TYPE_1__* regulators; } ;
struct regulator_init_data {struct wm8400* driver_data; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct regulator_init_data* platform_data; struct device* parent; } ;
struct TYPE_3__ {char* name; int id; TYPE_2__ dev; } ;


 int EBUSY ;
 struct wm8400* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (TYPE_2__*,struct wm8400*) ;
 int platform_device_register (TYPE_1__*) ;

int wm8400_register_regulator(struct device *dev, int reg,
         struct regulator_init_data *initdata)
{
 struct wm8400 *wm8400 = dev_get_drvdata(dev);

 if (wm8400->regulators[reg].name)
  return -EBUSY;

 initdata->driver_data = wm8400;

 wm8400->regulators[reg].name = "wm8400-regulator";
 wm8400->regulators[reg].id = reg;
 wm8400->regulators[reg].dev.parent = dev;
 wm8400->regulators[reg].dev.platform_data = initdata;
 dev_set_drvdata(&wm8400->regulators[reg].dev, wm8400);

 return platform_device_register(&wm8400->regulators[reg]);
}
