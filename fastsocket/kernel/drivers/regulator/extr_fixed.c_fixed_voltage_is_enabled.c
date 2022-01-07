
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct fixed_voltage_data {int is_enabled; } ;


 struct fixed_voltage_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int fixed_voltage_is_enabled(struct regulator_dev *dev)
{
 struct fixed_voltage_data *data = rdev_get_drvdata(dev);

 return data->is_enabled;
}
