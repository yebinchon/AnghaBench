
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int* da9034_ldo12_data ;

__attribute__((used)) static int da9034_list_ldo12_voltage(struct regulator_dev *rdev,
         unsigned selector)
{
 if (selector > ARRAY_SIZE(da9034_ldo12_data))
  return -EINVAL;
 return da9034_ldo12_data[selector] * 1000;
}
