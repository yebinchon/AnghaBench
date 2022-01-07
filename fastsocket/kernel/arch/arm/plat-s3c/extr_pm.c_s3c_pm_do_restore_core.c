
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleep_save {int reg; int val; } ;


 int __raw_writel (int ,int ) ;

void s3c_pm_do_restore_core(struct sleep_save *ptr, int count)
{
 for (; count > 0; count--, ptr++)
  __raw_writel(ptr->val, ptr->reg);
}
