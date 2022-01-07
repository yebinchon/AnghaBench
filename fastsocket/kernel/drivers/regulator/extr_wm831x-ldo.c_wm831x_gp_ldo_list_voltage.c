
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int EINVAL ;
 unsigned int WM831X_GP_LDO_MAX_SELECTOR ;
 unsigned int WM831X_GP_LDO_SELECTOR_LOW ;

__attribute__((used)) static int wm831x_gp_ldo_list_voltage(struct regulator_dev *rdev,
          unsigned int selector)
{

 if (selector <= WM831X_GP_LDO_SELECTOR_LOW)
  return 900000 + (selector * 50000);

 if (selector <= WM831X_GP_LDO_MAX_SELECTOR)
  return 1600000 + ((selector - WM831X_GP_LDO_SELECTOR_LOW)
      * 100000);
 return -EINVAL;
}
