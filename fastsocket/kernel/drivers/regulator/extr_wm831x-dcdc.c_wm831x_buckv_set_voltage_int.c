
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm831x_dcdc {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int WM831X_DC1_ON_VSEL_MASK ;
 struct wm831x_dcdc* rdev_get_drvdata (struct regulator_dev*) ;
 int wm831x_buckv_list_voltage (struct regulator_dev*,int) ;
 int wm831x_set_bits (struct wm831x*,int,int ,int) ;

__attribute__((used)) static int wm831x_buckv_set_voltage_int(struct regulator_dev *rdev, int reg,
      int min_uV, int max_uV)
{
 struct wm831x_dcdc *dcdc = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = dcdc->wm831x;
 u16 vsel;

 if (min_uV < 600000)
  vsel = 0;
 else if (min_uV <= 1800000)
  vsel = ((min_uV - 600000) / 12500) + 8;
 else
  return -EINVAL;

 if (wm831x_buckv_list_voltage(rdev, vsel) > max_uV)
  return -EINVAL;

 return wm831x_set_bits(wm831x, reg, WM831X_DC1_ON_VSEL_MASK, vsel);
}
