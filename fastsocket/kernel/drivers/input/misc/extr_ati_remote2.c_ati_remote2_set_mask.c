
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int EINVAL ;
 int strict_strtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static int ati_remote2_set_mask(const char *val,
    struct kernel_param *kp, unsigned int max)
{
 unsigned long mask;
 int ret;

 if (!val)
  return -EINVAL;

 ret = strict_strtoul(val, 0, &mask);
 if (ret)
  return ret;

 if (mask & ~max)
  return -EINVAL;

 *(unsigned int *)kp->arg = mask;

 return 0;
}
