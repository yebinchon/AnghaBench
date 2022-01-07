
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct fixed_voltage_data {int is_enabled; int enable_high; int gpio; } ;


 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int ) ;
 struct fixed_voltage_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int fixed_voltage_enable(struct regulator_dev *dev)
{
 struct fixed_voltage_data *data = rdev_get_drvdata(dev);

 if (gpio_is_valid(data->gpio)) {
  gpio_set_value_cansleep(data->gpio, data->enable_high);
  data->is_enabled = 1;
 }

 return 0;
}
