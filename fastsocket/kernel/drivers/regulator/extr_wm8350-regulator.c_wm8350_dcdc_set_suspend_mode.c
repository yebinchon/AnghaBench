
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int dcdc6_hib_mode; int dcdc4_hib_mode; int dcdc3_hib_mode; int dcdc1_hib_mode; } ;
struct wm8350 {TYPE_1__ pmic; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int WM8350_DCDC_HIB_MODE_IMAGE ;
 int WM8350_DCDC_HIB_MODE_LDO_IM ;
 int WM8350_DCDC_HIB_MODE_STANDBY ;
 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int wm8350_dcdc_set_suspend_mode(struct regulator_dev *rdev,
 unsigned int mode)
{
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);
 int dcdc = rdev_get_id(rdev);
 u16 *hib_mode;

 switch (dcdc) {
 case 133:
  hib_mode = &wm8350->pmic.dcdc1_hib_mode;
  break;
 case 131:
  hib_mode = &wm8350->pmic.dcdc3_hib_mode;
  break;
 case 130:
  hib_mode = &wm8350->pmic.dcdc4_hib_mode;
  break;
 case 128:
  hib_mode = &wm8350->pmic.dcdc6_hib_mode;
  break;
 case 132:
 case 129:
 default:
  return -EINVAL;
 }

 switch (mode) {
 case 135:
  *hib_mode = WM8350_DCDC_HIB_MODE_IMAGE;
  break;
 case 136:
  *hib_mode = WM8350_DCDC_HIB_MODE_STANDBY;
  break;
 case 134:
  *hib_mode = WM8350_DCDC_HIB_MODE_LDO_IM;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
