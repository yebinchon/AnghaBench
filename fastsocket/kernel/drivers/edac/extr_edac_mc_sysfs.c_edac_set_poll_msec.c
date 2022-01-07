
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int EINVAL ;
 int edac_mc_reset_delay_period (long) ;
 int strict_strtol (char const*,int ,long*) ;

__attribute__((used)) static int edac_set_poll_msec(const char *val, struct kernel_param *kp)
{
 long l;
 int ret;

 if (!val)
  return -EINVAL;

 ret = strict_strtol(val, 0, &l);
 if (ret == -EINVAL || ((int)l != l))
  return -EINVAL;
 *((int *)kp->arg) = l;


 edac_mc_reset_delay_period(l);

 return 0;
}
