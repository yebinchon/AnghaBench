
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int binder_stop_on_user_error ;
 int binder_user_error_wait ;
 int param_set_int (char const*,struct kernel_param*) ;
 int wake_up (int *) ;

__attribute__((used)) static int binder_set_stop_on_user_error(const char *val,
      struct kernel_param *kp)
{
 int ret;
 ret = param_set_int(val, kp);
 if (binder_stop_on_user_error < 2)
  wake_up(&binder_user_error_wait);
 return ret;
}
