
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;
 unsigned long max_low_pfn ;
 unsigned long roundup_pow_of_two (unsigned long) ;

unsigned long
size_for_memory(unsigned long max)
{
 unsigned long mem = max_low_pfn << PAGE_SHIFT;
 if (mem < max)
  max = roundup_pow_of_two(mem);
 return max;
}
