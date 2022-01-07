
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct da903x_regulator_info {unsigned int min_uV; unsigned int step_uV; int max_uV; } ;


 int EINVAL ;
 struct da903x_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int da903x_list_voltage(struct regulator_dev *rdev, unsigned selector)
{
 struct da903x_regulator_info *info = rdev_get_drvdata(rdev);
 int ret;

 ret = info->min_uV + info->step_uV * selector;
 if (ret > info->max_uV)
  return -EINVAL;
 return ret;
}
