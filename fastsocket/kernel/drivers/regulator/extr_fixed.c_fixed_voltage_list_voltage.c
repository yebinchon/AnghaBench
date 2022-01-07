
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct fixed_voltage_data {int microvolts; } ;


 int EINVAL ;
 struct fixed_voltage_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int fixed_voltage_list_voltage(struct regulator_dev *dev,
          unsigned selector)
{
 struct fixed_voltage_data *data = rdev_get_drvdata(dev);

 if (selector != 0)
  return -EINVAL;

 return data->microvolts;
}
