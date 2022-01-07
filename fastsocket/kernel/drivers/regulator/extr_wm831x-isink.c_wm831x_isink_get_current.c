
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_isink {int reg; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int WM831X_CS1_ISEL_MASK ;
 int WM831X_ISINK_MAX_ISEL ;
 struct wm831x_isink* rdev_get_drvdata (struct regulator_dev*) ;
 int* wm831x_isinkv_values ;
 int wm831x_reg_read (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_isink_get_current(struct regulator_dev *rdev)
{
 struct wm831x_isink *isink = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = isink->wm831x;
 int ret;

 ret = wm831x_reg_read(wm831x, isink->reg);
 if (ret < 0)
  return ret;

 ret &= WM831X_CS1_ISEL_MASK;
 if (ret > WM831X_ISINK_MAX_ISEL)
  ret = WM831X_ISINK_MAX_ISEL;

 return wm831x_isinkv_values[ret];
}
