
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ mtrr_check (unsigned long,unsigned long) ;
 int mtrr_del_page (int,unsigned long,unsigned long) ;

int mtrr_del(int reg, unsigned long base, unsigned long size)
{
 if (mtrr_check(base, size))
  return -EINVAL;
 return mtrr_del_page(reg, base >> PAGE_SHIFT, size >> PAGE_SHIFT);
}
