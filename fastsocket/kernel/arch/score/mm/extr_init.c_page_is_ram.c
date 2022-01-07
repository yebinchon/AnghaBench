
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long max_low_pfn ;
 unsigned long min_low_pfn ;

int page_is_ram(unsigned long pagenr)
{
 if (pagenr >= min_low_pfn && pagenr < max_low_pfn)
  return 1;
 else
  return 0;
}
