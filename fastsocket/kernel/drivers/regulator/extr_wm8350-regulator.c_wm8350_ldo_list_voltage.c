
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int EINVAL ;
 unsigned int WM8350_LDO1_VSEL_MASK ;
 int wm8350_ldo_val_to_mvolts (unsigned int) ;

__attribute__((used)) static int wm8350_ldo_list_voltage(struct regulator_dev *rdev,
        unsigned selector)
{
 if (selector > WM8350_LDO1_VSEL_MASK)
  return -EINVAL;
 return wm8350_ldo_val_to_mvolts(selector) * 1000;
}
