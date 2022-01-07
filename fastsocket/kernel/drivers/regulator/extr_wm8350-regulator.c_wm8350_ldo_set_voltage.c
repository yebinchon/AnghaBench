
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int WM8350_LDO1_CONTROL ;
 int WM8350_LDO1_VSEL_MASK ;
 int WM8350_LDO2_CONTROL ;
 int WM8350_LDO3_CONTROL ;
 int WM8350_LDO4_CONTROL ;




 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8350_ldo_val_to_mvolts (int) ;
 int wm8350_reg_read (struct wm8350*,int) ;
 int wm8350_reg_write (struct wm8350*,int,int) ;

__attribute__((used)) static int wm8350_ldo_set_voltage(struct regulator_dev *rdev, int min_uV,
 int max_uV)
{
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);
 int volt_reg, ldo = rdev_get_id(rdev), mV, min_mV = min_uV / 1000,
  max_mV = max_uV / 1000;
 u16 val;

 if (min_mV < 900 || min_mV > 3300)
  return -EINVAL;
 if (max_mV < 900 || max_mV > 3300)
  return -EINVAL;

 if (min_mV < 1800) {

  mV = (min_mV - 851) / 50;
  if (wm8350_ldo_val_to_mvolts(mV) > max_mV)
   return -EINVAL;
  BUG_ON(wm8350_ldo_val_to_mvolts(mV) < min_mV);
 } else {

  mV = ((min_mV - 1701) / 100) + 16;
  if (wm8350_ldo_val_to_mvolts(mV) > max_mV)
   return -EINVAL;
  BUG_ON(wm8350_ldo_val_to_mvolts(mV) < min_mV);
 }

 switch (ldo) {
 case 131:
  volt_reg = WM8350_LDO1_CONTROL;
  break;
 case 130:
  volt_reg = WM8350_LDO2_CONTROL;
  break;
 case 129:
  volt_reg = WM8350_LDO3_CONTROL;
  break;
 case 128:
  volt_reg = WM8350_LDO4_CONTROL;
  break;
 default:
  return -EINVAL;
 }


 val = wm8350_reg_read(wm8350, volt_reg) & ~WM8350_LDO1_VSEL_MASK;
 wm8350_reg_write(wm8350, volt_reg, val | mV);
 return 0;
}
