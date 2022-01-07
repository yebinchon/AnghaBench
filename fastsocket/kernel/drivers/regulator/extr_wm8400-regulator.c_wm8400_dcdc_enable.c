
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8400 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int WM8400_DC1_ENA ;
 int WM8400_DCDC1 ;
 scalar_t__ WM8400_DCDC1_CONTROL_1 ;
 struct wm8400* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8400_set_bits (struct wm8400*,scalar_t__,int ,int ) ;

__attribute__((used)) static int wm8400_dcdc_enable(struct regulator_dev *dev)
{
 struct wm8400 *wm8400 = rdev_get_drvdata(dev);
 int offset = (rdev_get_id(dev) - WM8400_DCDC1) * 2;

 return wm8400_set_bits(wm8400, WM8400_DCDC1_CONTROL_1 + offset,
          WM8400_DC1_ENA, WM8400_DC1_ENA);
}
