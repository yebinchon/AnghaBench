
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int EINVAL ;
 unsigned int WM831X_ALIVE_LDO_MAX_SELECTOR ;

__attribute__((used)) static int wm831x_alive_ldo_list_voltage(struct regulator_dev *rdev,
          unsigned int selector)
{

 if (selector <= WM831X_ALIVE_LDO_MAX_SELECTOR)
  return 800000 + (selector * 50000);
 return -EINVAL;
}
