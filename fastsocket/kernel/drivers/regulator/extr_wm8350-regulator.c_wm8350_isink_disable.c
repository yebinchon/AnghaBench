
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isink_A_dcdc; int isink_B_dcdc; } ;
struct wm8350 {TYPE_1__ pmic; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int WM8350_CS1_ENA ;
 int WM8350_CS2_ENA ;
 int WM8350_DCDC_1 ;


 int WM8350_DCDC_LDO_REQUESTED ;


 int WM8350_POWER_MGMT_7 ;
 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8350_clear_bits (struct wm8350*,int ,int) ;

__attribute__((used)) static int wm8350_isink_disable(struct regulator_dev *rdev)
{
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);
 int isink = rdev_get_id(rdev);

 switch (isink) {
 case 129:
  switch (wm8350->pmic.isink_A_dcdc) {
  case 131:
  case 130:
   wm8350_clear_bits(wm8350, WM8350_DCDC_LDO_REQUESTED,
       1 << (wm8350->pmic.isink_A_dcdc -
      WM8350_DCDC_1));
   wm8350_clear_bits(wm8350, WM8350_POWER_MGMT_7,
       WM8350_CS1_ENA);
   break;
  default:
   return -EINVAL;
  }
  break;
 case 128:
  switch (wm8350->pmic.isink_B_dcdc) {
  case 131:
  case 130:
   wm8350_clear_bits(wm8350, WM8350_DCDC_LDO_REQUESTED,
       1 << (wm8350->pmic.isink_B_dcdc -
      WM8350_DCDC_1));
   wm8350_clear_bits(wm8350, WM8350_POWER_MGMT_7,
       WM8350_CS2_ENA);
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
