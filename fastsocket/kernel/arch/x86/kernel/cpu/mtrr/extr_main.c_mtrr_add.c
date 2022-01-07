
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 int mtrr_add_page (unsigned long,unsigned long,unsigned int,int) ;
 scalar_t__ mtrr_check (unsigned long,unsigned long) ;

int mtrr_add(unsigned long base, unsigned long size, unsigned int type,
      bool increment)
{
 if (mtrr_check(base, size))
  return -EINVAL;
 return mtrr_add_page(base >> PAGE_SHIFT, size >> PAGE_SHIFT, type,
        increment);
}
