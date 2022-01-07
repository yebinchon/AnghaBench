
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long HPAGE_MASK ;

int is_aligned_hugepage_range(unsigned long addr, unsigned long len)
{
 if (len & ~HPAGE_MASK)
  return -EINVAL;
 if (addr & ~HPAGE_MASK)
  return -EINVAL;
 return 0;
}
