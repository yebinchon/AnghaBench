
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;
struct da903x_regulator_info {int min_uV; int step_uV; int vol_shift; int vol_nbits; int vol_reg; } ;


 int DA9030_LDO_UNLOCK ;
 int DA9030_LDO_UNLOCK_MASK ;
 int EINVAL ;
 scalar_t__ check_range (struct da903x_regulator_info*,int,int) ;
 int da903x_update (struct device*,int ,int,int) ;
 int pr_err (char*,int,int) ;
 struct da903x_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 struct device* to_da903x_dev (struct regulator_dev*) ;

__attribute__((used)) static int da9030_set_ldo1_15_voltage(struct regulator_dev *rdev,
           int min_uV, int max_uV)
{
 struct da903x_regulator_info *info = rdev_get_drvdata(rdev);
 struct device *da903x_dev = to_da903x_dev(rdev);
 uint8_t val, mask;
 int ret;

 if (check_range(info, min_uV, max_uV)) {
  pr_err("invalid voltage range (%d, %d) uV\n", min_uV, max_uV);
  return -EINVAL;
 }

 val = (min_uV - info->min_uV + info->step_uV - 1) / info->step_uV;
 val <<= info->vol_shift;
 mask = ((1 << info->vol_nbits) - 1) << info->vol_shift;
 val |= DA9030_LDO_UNLOCK;
 mask |= DA9030_LDO_UNLOCK_MASK;


 ret = da903x_update(da903x_dev, info->vol_reg, val, mask);
 if (ret)
  return ret;

 return da903x_update(da903x_dev, info->vol_reg, val, mask);
}
