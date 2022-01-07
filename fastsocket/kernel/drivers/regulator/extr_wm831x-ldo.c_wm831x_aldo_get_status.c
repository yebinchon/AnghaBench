
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_ldo {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int REGULATOR_STATUS_ERROR ;
 int REGULATOR_STATUS_OFF ;
 int WM831X_LDO_STATUS ;
 int WM831X_LDO_UV_STATUS ;
 struct wm831x_ldo* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regulator_mode_to_status (int) ;
 int wm831x_aldo_get_mode (struct regulator_dev*) ;
 int wm831x_reg_read (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_aldo_get_status(struct regulator_dev *rdev)
{
 struct wm831x_ldo *ldo = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = ldo->wm831x;
 int mask = 1 << rdev_get_id(rdev);
 int ret;


 ret = wm831x_reg_read(wm831x, WM831X_LDO_STATUS);
 if (ret < 0)
  return ret;
 if (!(ret & mask))
  return REGULATOR_STATUS_OFF;


 ret = wm831x_reg_read(wm831x, WM831X_LDO_UV_STATUS);
 if (ret & mask)
  return REGULATOR_STATUS_ERROR;

 ret = wm831x_aldo_get_mode(rdev);
 if (ret < 0)
  return ret;
 else
  return regulator_mode_to_status(ret);
}
