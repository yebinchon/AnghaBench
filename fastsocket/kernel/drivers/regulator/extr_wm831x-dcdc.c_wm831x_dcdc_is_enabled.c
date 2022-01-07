
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_dcdc {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int WM831X_DCDC_ENABLE ;
 struct wm831x_dcdc* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm831x_reg_read (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_dcdc_is_enabled(struct regulator_dev *rdev)
{
 struct wm831x_dcdc *dcdc = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = dcdc->wm831x;
 int mask = 1 << rdev_get_id(rdev);
 int reg;

 reg = wm831x_reg_read(wm831x, WM831X_DCDC_ENABLE);
 if (reg < 0)
  return reg;

 if (reg & mask)
  return 1;
 else
  return 0;
}
