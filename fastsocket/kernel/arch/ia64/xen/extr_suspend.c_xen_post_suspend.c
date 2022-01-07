
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xen_ia64_enable_opt_feature () ;

void
xen_post_suspend(int suspend_cancelled)
{
 if (suspend_cancelled)
  return;

 xen_ia64_enable_opt_feature();

}
