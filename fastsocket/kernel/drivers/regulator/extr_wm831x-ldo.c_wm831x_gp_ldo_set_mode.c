
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_ldo {int base; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;



 int WM831X_LDO1_LP_MODE ;
 int WM831X_LDO1_ON_MODE ;
 int WM831X_LDO_CONTROL ;
 int WM831X_LDO_ON_CONTROL ;
 struct wm831x_ldo* rdev_get_drvdata (struct regulator_dev*) ;
 int wm831x_set_bits (struct wm831x*,int,int ,int ) ;

__attribute__((used)) static int wm831x_gp_ldo_set_mode(struct regulator_dev *rdev,
      unsigned int mode)
{
 struct wm831x_ldo *ldo = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = ldo->wm831x;
 int ctrl_reg = ldo->base + WM831X_LDO_CONTROL;
 int on_reg = ldo->base + WM831X_LDO_ON_CONTROL;
 int ret;


 switch (mode) {
 case 129:
  ret = wm831x_set_bits(wm831x, on_reg,
          WM831X_LDO1_ON_MODE, 0);
  if (ret < 0)
   return ret;
  break;

 case 130:
  ret = wm831x_set_bits(wm831x, ctrl_reg,
          WM831X_LDO1_LP_MODE,
          WM831X_LDO1_LP_MODE);
  if (ret < 0)
   return ret;

  ret = wm831x_set_bits(wm831x, on_reg,
          WM831X_LDO1_ON_MODE,
          WM831X_LDO1_ON_MODE);
  if (ret < 0)
   return ret;

 case 128:
  ret = wm831x_set_bits(wm831x, ctrl_reg,
          WM831X_LDO1_LP_MODE, 0);
  if (ret < 0)
   return ret;

  ret = wm831x_set_bits(wm831x, on_reg,
          WM831X_LDO1_ON_MODE,
          WM831X_LDO1_ON_MODE);
  if (ret < 0)
   return ret;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
