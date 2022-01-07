
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grant_entry {int dummy; } ;


 unsigned long PAGE_SHIFT ;
 struct grant_entry* __va (unsigned long) ;

int arch_gnttab_map_shared(unsigned long *frames, unsigned long nr_gframes,
      unsigned long max_nr_gframes,
      struct grant_entry **__shared)
{
 *__shared = __va(frames[0] << PAGE_SHIFT);
 return 0;
}
