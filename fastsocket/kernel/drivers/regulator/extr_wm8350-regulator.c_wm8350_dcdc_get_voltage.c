
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int WM8350_DC1_VSEL_MASK ;
 int WM8350_DCDC1_CONTROL ;
 int WM8350_DCDC3_CONTROL ;
 int WM8350_DCDC4_CONTROL ;
 int WM8350_DCDC6_CONTROL ;






 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8350_dcdc_val_to_mvolts (int) ;
 int wm8350_reg_read (struct wm8350*,int) ;

__attribute__((used)) static int wm8350_dcdc_get_voltage(struct regulator_dev *rdev)
{
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);
 int volt_reg, dcdc = rdev_get_id(rdev);
 u16 val;

 switch (dcdc) {
 case 133:
  volt_reg = WM8350_DCDC1_CONTROL;
  break;
 case 131:
  volt_reg = WM8350_DCDC3_CONTROL;
  break;
 case 130:
  volt_reg = WM8350_DCDC4_CONTROL;
  break;
 case 128:
  volt_reg = WM8350_DCDC6_CONTROL;
  break;
 case 132:
 case 129:
 default:
  return -EINVAL;
 }


 val = wm8350_reg_read(wm8350, volt_reg) & WM8350_DC1_VSEL_MASK;
 return wm8350_dcdc_val_to_mvolts(val) * 1000;
}
