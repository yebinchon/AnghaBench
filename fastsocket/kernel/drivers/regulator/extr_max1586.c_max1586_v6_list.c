
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int EINVAL ;
 unsigned int MAX1586_V6_MAX_VSEL ;
 int max1586_v6_calc_voltage (unsigned int) ;

__attribute__((used)) static int max1586_v6_list(struct regulator_dev *rdev, unsigned selector)
{
 if (selector > MAX1586_V6_MAX_VSEL)
  return -EINVAL;
 return max1586_v6_calc_voltage(selector);
}
