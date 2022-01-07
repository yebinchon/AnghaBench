
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8400 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 scalar_t__ WM8400_LDO1_CONTROL ;
 int WM8400_LDO1_VSEL_MASK ;
 struct wm8400* rdev_get_drvdata (struct regulator_dev*) ;
 scalar_t__ rdev_get_id (struct regulator_dev*) ;
 int wm8400_set_bits (struct wm8400*,scalar_t__,int ,int) ;

__attribute__((used)) static int wm8400_ldo_set_voltage(struct regulator_dev *dev,
      int min_uV, int max_uV)
{
 struct wm8400 *wm8400 = rdev_get_drvdata(dev);
 u16 val;

 if (min_uV < 900000 || min_uV > 3300000)
  return -EINVAL;

 if (min_uV < 1700000) {

  val = (min_uV - 850001) / 50000;

  if ((val * 50000) + 900000 > max_uV)
   return -EINVAL;
  BUG_ON((val * 50000) + 900000 < min_uV);
 } else {

  val = ((min_uV - 1600001) / 100000);

  if ((val * 100000) + 1700000 > max_uV)
   return -EINVAL;
  BUG_ON((val * 100000) + 1700000 < min_uV);

  val += 0xf;
 }

 return wm8400_set_bits(wm8400, WM8400_LDO1_CONTROL + rdev_get_id(dev),
          WM8400_LDO1_VSEL_MASK, val);
}
