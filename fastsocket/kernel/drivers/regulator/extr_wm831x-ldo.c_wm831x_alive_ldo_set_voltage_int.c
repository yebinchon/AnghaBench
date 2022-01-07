
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_ldo {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int WM831X_LDO11_ON_VSEL_MASK ;
 struct wm831x_ldo* rdev_get_drvdata (struct regulator_dev*) ;
 int wm831x_alive_ldo_list_voltage (struct regulator_dev*,int) ;
 int wm831x_set_bits (struct wm831x*,int,int ,int) ;

__attribute__((used)) static int wm831x_alive_ldo_set_voltage_int(struct regulator_dev *rdev,
         int reg,
         int min_uV, int max_uV)
{
 struct wm831x_ldo *ldo = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = ldo->wm831x;
 int vsel, ret;

 vsel = (min_uV - 800000) / 50000;

 ret = wm831x_alive_ldo_list_voltage(rdev, vsel);
 if (ret < 0)
  return ret;
 if (ret < min_uV || ret > max_uV)
  return -EINVAL;

 return wm831x_set_bits(wm831x, reg, WM831X_LDO11_ON_VSEL_MASK, vsel);
}
