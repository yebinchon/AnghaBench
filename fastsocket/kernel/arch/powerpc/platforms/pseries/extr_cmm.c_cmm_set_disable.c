
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int cmm_disabled ;
 int cmm_free_pages (int ) ;
 int cmm_thread ;
 int * cmm_thread_ptr ;
 int * kthread_run (int ,int *,char*) ;
 int kthread_stop (int *) ;
 int loaned_pages ;
 int simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static int cmm_set_disable(const char *val, struct kernel_param *kp)
{
 int disable = simple_strtoul(val, ((void*)0), 10);

 if (disable != 0 && disable != 1)
  return -EINVAL;

 if (disable && !cmm_disabled) {
  if (cmm_thread_ptr)
   kthread_stop(cmm_thread_ptr);
  cmm_thread_ptr = ((void*)0);
  cmm_free_pages(loaned_pages);
 } else if (!disable && cmm_disabled) {
  cmm_thread_ptr = kthread_run(cmm_thread, ((void*)0), "cmmthread");
  if (IS_ERR(cmm_thread_ptr))
   return PTR_ERR(cmm_thread_ptr);
 }

 cmm_disabled = disable;
 return 0;
}
