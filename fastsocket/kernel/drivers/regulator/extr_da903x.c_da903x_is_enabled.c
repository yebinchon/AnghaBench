
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;
struct da903x_regulator_info {int enable_bit; int enable_reg; } ;


 int da903x_read (struct device*,int ,int*) ;
 struct da903x_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 struct device* to_da903x_dev (struct regulator_dev*) ;

__attribute__((used)) static int da903x_is_enabled(struct regulator_dev *rdev)
{
 struct da903x_regulator_info *info = rdev_get_drvdata(rdev);
 struct device *da9034_dev = to_da903x_dev(rdev);
 uint8_t reg_val;
 int ret;

 ret = da903x_read(da9034_dev, info->enable_reg, &reg_val);
 if (ret)
  return ret;

 return !!(reg_val & (1 << info->enable_bit));
}
