
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;

__attribute__((used)) static inline int cross_bound(unsigned long addr, unsigned int size)
{
 if (size == 0)
  return 0;

 if (size > PAGE_SIZE)
  return 1;

 if (addr >> PAGE_SHIFT != (addr + size - 1) >> PAGE_SHIFT)
  return 1;

 return 0;
}
