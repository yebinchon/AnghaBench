
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int WM8350_DC2_HIB_MODE_DISABLE ;
 int WM8350_DC2_HIB_MODE_MASK ;
 int WM8350_DCDC2_CONTROL ;
 int WM8350_DCDC5_CONTROL ;


 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8350_reg_read (struct wm8350*,int ) ;
 int wm8350_reg_write (struct wm8350*,int ,int) ;

__attribute__((used)) static int wm8350_dcdc25_set_suspend_disable(struct regulator_dev *rdev)
{
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);
 int dcdc = rdev_get_id(rdev);
 u16 val;

 switch (dcdc) {
 case 129:
  val = wm8350_reg_read(wm8350, WM8350_DCDC2_CONTROL)
      & ~WM8350_DC2_HIB_MODE_MASK;
  wm8350_reg_write(wm8350, WM8350_DCDC2_CONTROL, val |
     WM8350_DC2_HIB_MODE_DISABLE);
  break;
 case 128:
  val = wm8350_reg_read(wm8350, WM8350_DCDC5_CONTROL)
      & ~WM8350_DC2_HIB_MODE_MASK;
  wm8350_reg_write(wm8350, WM8350_DCDC5_CONTROL, val |
     WM8350_DC2_HIB_MODE_DISABLE);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
