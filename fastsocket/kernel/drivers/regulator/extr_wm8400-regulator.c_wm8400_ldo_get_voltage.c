
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8400 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 scalar_t__ WM8400_LDO1_CONTROL ;
 int WM8400_LDO1_VSEL_MASK ;
 struct wm8400* rdev_get_drvdata (struct regulator_dev*) ;
 scalar_t__ rdev_get_id (struct regulator_dev*) ;
 int wm8400_ldo_list_voltage (struct regulator_dev*,int ) ;
 int wm8400_reg_read (struct wm8400*,scalar_t__) ;

__attribute__((used)) static int wm8400_ldo_get_voltage(struct regulator_dev *dev)
{
 struct wm8400 *wm8400 = rdev_get_drvdata(dev);
 u16 val;

 val = wm8400_reg_read(wm8400, WM8400_LDO1_CONTROL + rdev_get_id(dev));
 val &= WM8400_LDO1_VSEL_MASK;

 return wm8400_ldo_list_voltage(dev, val);
}
