
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int EINVAL ;
 unsigned int WM8400_LDO1_VSEL_MASK ;

__attribute__((used)) static int wm8400_ldo_list_voltage(struct regulator_dev *dev,
       unsigned selector)
{
 if (selector > WM8400_LDO1_VSEL_MASK)
  return -EINVAL;

 if (selector < 15)
  return 900000 + (selector * 50000);
 else
  return 1600000 + ((selector - 14) * 100000);
}
