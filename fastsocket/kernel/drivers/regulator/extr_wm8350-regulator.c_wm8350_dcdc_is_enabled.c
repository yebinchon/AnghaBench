
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int WM8350_DCDC_1 ;
 int WM8350_DCDC_6 ;
 int WM8350_DCDC_LDO_REQUESTED ;
 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8350_reg_read (struct wm8350*,int ) ;

__attribute__((used)) static int wm8350_dcdc_is_enabled(struct regulator_dev *rdev)
{
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);
 int dcdc = rdev_get_id(rdev), shift;

 if (dcdc < WM8350_DCDC_1 || dcdc > WM8350_DCDC_6)
  return -EINVAL;

 shift = dcdc - WM8350_DCDC_1;
 return wm8350_reg_read(wm8350, WM8350_DCDC_LDO_REQUESTED)
     & (1 << shift);
}
