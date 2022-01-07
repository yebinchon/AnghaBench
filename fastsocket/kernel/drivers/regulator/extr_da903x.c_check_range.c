
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da903x_regulator_info {int min_uV; int max_uV; } ;


 int EINVAL ;

__attribute__((used)) static inline int check_range(struct da903x_regulator_info *info,
    int min_uV, int max_uV)
{
 if (min_uV < info->min_uV || min_uV > info->max_uV)
  return -EINVAL;

 return 0;
}
