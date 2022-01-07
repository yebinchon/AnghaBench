
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;
struct da903x_regulator_info {int vol_nbits; int vol_shift; int min_uV; int step_uV; int vol_reg; } ;


 int da903x_read (struct device*,int ,int*) ;
 struct da903x_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 struct device* to_da903x_dev (struct regulator_dev*) ;

__attribute__((used)) static int da903x_get_voltage(struct regulator_dev *rdev)
{
 struct da903x_regulator_info *info = rdev_get_drvdata(rdev);
 struct device *da9034_dev = to_da903x_dev(rdev);
 uint8_t val, mask;
 int ret;

 ret = da903x_read(da9034_dev, info->vol_reg, &val);
 if (ret)
  return ret;

 mask = ((1 << info->vol_nbits) - 1) << info->vol_shift;
 val = (val & mask) >> info->vol_shift;

 return info->min_uV + info->step_uV * val;
}
