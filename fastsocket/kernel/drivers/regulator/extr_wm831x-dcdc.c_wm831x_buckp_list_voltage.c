
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int EINVAL ;
 unsigned int WM831X_BUCKP_MAX_SELECTOR ;

__attribute__((used)) static int wm831x_buckp_list_voltage(struct regulator_dev *rdev,
          unsigned selector)
{
 if (selector <= WM831X_BUCKP_MAX_SELECTOR)
  return 850000 + (selector * 25000);
 else
  return -EINVAL;
}
