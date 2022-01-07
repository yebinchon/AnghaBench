
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int drm_fb_helper_force_kernel_mode () ;
 scalar_t__ panic_timeout ;
 int pr_err (char*) ;

__attribute__((used)) static int drm_fb_helper_panic(struct notifier_block *n, unsigned long ununsed,
   void *panic_str)
{




 if (panic_timeout < 0)
  return 0;

 pr_err("panic occurred, switching back to text console\n");
 return drm_fb_helper_force_kernel_mode();
}
