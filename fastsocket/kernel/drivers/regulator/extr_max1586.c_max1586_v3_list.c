
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max1586_data {int dummy; } ;


 int EINVAL ;
 unsigned int MAX1586_V3_MAX_VSEL ;
 int max1586_v3_calc_voltage (struct max1586_data*,unsigned int) ;
 struct max1586_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max1586_v3_list(struct regulator_dev *rdev, unsigned selector)
{
 struct max1586_data *max1586 = rdev_get_drvdata(rdev);

 if (selector > MAX1586_V3_MAX_VSEL)
  return -EINVAL;
 return max1586_v3_calc_voltage(max1586, selector);
}
