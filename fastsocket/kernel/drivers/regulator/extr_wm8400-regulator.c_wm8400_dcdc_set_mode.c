
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8400 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;



 int WM8400_DC1_ACTIVE ;
 int WM8400_DC1_FRC_PWM ;
 int WM8400_DC1_SLEEP ;
 int WM8400_DCDC1 ;
 int WM8400_DCDC1_CONTROL_1 ;
 int WM8400_DCDC1_CONTROL_2 ;
 struct wm8400* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8400_set_bits (struct wm8400*,int ,int,int) ;

__attribute__((used)) static int wm8400_dcdc_set_mode(struct regulator_dev *dev, unsigned int mode)
{
 struct wm8400 *wm8400 = rdev_get_drvdata(dev);
 int offset = (rdev_get_id(dev) - WM8400_DCDC1) * 2;
 int ret;

 switch (mode) {
 case 130:

  ret = wm8400_set_bits(wm8400, WM8400_DCDC1_CONTROL_2 + offset,
          WM8400_DC1_FRC_PWM, WM8400_DC1_FRC_PWM);
  if (ret != 0)
   return ret;

  return wm8400_set_bits(wm8400, WM8400_DCDC1_CONTROL_1 + offset,
           WM8400_DC1_ACTIVE | WM8400_DC1_SLEEP,
           WM8400_DC1_ACTIVE);

 case 128:

  ret = wm8400_set_bits(wm8400, WM8400_DCDC1_CONTROL_2 + offset,
          WM8400_DC1_FRC_PWM, 0);
  if (ret != 0)
   return ret;

  return wm8400_set_bits(wm8400, WM8400_DCDC1_CONTROL_1 + offset,
           WM8400_DC1_ACTIVE | WM8400_DC1_SLEEP,
           WM8400_DC1_ACTIVE);

 case 129:

  ret = wm8400_set_bits(wm8400, WM8400_DCDC1_CONTROL_1 + offset,
          WM8400_DC1_ACTIVE, 0);
  if (ret != 0)
   return ret;
  return wm8400_set_bits(wm8400, WM8400_DCDC1_CONTROL_1 + offset,
           WM8400_DC1_SLEEP, 0);

 default:
  return -EINVAL;
 }
}
