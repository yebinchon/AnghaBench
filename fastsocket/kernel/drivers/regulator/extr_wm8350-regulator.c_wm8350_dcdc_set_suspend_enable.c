
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
 int WM8350_DCDC1_LOW_POWER ;
 int WM8350_DCDC3_LOW_POWER ;
 int WM8350_DCDC4_LOW_POWER ;
 int WM8350_DCDC6_LOW_POWER ;






 int WM8350_DCDC_HIB_MODE_MASK ;
 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8350_reg_read (struct wm8350*,int ) ;
 int wm8350_reg_write (struct wm8350*,int ,int ) ;

__attribute__((used)) static int wm8350_dcdc_set_suspend_enable(struct regulator_dev *rdev)
{
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);
 int dcdc = rdev_get_id(rdev);
 u16 val;

 switch (dcdc) {
 case 133:
  val = wm8350_reg_read(wm8350, WM8350_DCDC1_LOW_POWER)
   & ~WM8350_DCDC_HIB_MODE_MASK;
  wm8350_reg_write(wm8350, WM8350_DCDC1_LOW_POWER,
   wm8350->pmic.dcdc1_hib_mode);
  break;
 case 131:
  val = wm8350_reg_read(wm8350, WM8350_DCDC3_LOW_POWER)
   & ~WM8350_DCDC_HIB_MODE_MASK;
  wm8350_reg_write(wm8350, WM8350_DCDC3_LOW_POWER,
   wm8350->pmic.dcdc3_hib_mode);
  break;
 case 130:
  val = wm8350_reg_read(wm8350, WM8350_DCDC4_LOW_POWER)
   & ~WM8350_DCDC_HIB_MODE_MASK;
  wm8350_reg_write(wm8350, WM8350_DCDC4_LOW_POWER,
   wm8350->pmic.dcdc4_hib_mode);
  break;
 case 128:
  val = wm8350_reg_read(wm8350, WM8350_DCDC6_LOW_POWER)
   & ~WM8350_DCDC_HIB_MODE_MASK;
  wm8350_reg_write(wm8350, WM8350_DCDC6_LOW_POWER,
   wm8350->pmic.dcdc6_hib_mode);
  break;
 case 132:
 case 129:
 default:
  return -EINVAL;
 }

 return 0;
}
