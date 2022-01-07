
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dummy; } ;


 int EINVAL ;




 int WM831X_DC1_ON_MODE_MASK ;
 int WM831X_DC1_ON_MODE_SHIFT ;
 int WM831X_DCDC_MODE_FAST ;
 int WM831X_DCDC_MODE_IDLE ;
 int WM831X_DCDC_MODE_NORMAL ;
 int WM831X_DCDC_MODE_STANDBY ;
 int wm831x_set_bits (struct wm831x*,int,int ,int) ;

__attribute__((used)) static int wm831x_dcdc_set_mode_int(struct wm831x *wm831x, int reg,
        unsigned int mode)
{
 int val;

 switch (mode) {
 case 131:
  val = WM831X_DCDC_MODE_FAST;
  break;
 case 129:
  val = WM831X_DCDC_MODE_NORMAL;
  break;
 case 128:
  val = WM831X_DCDC_MODE_STANDBY;
  break;
 case 130:
  val = WM831X_DCDC_MODE_IDLE;
  break;
 default:
  return -EINVAL;
 }

 return wm831x_set_bits(wm831x, reg, WM831X_DC1_ON_MODE_MASK,
          val << WM831X_DC1_ON_MODE_SHIFT);
}
