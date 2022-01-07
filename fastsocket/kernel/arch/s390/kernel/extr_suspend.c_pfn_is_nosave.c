
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long LC_PAGES ;
 unsigned long PFN_DOWN (int ) ;
 int PFN_PHYS (unsigned long) ;
 int __nosave_begin ;
 int __nosave_end ;
 int __pa (int *) ;
 scalar_t__ tprot (int ) ;

int pfn_is_nosave(unsigned long pfn)
{
 unsigned long nosave_begin_pfn = PFN_DOWN(__pa(&__nosave_begin));
 unsigned long nosave_end_pfn = PFN_DOWN(__pa(&__nosave_end));


 if (pfn <= LC_PAGES)
  return 0;
 if (pfn >= nosave_begin_pfn && pfn < nosave_end_pfn)
  return 1;

 if (tprot(PFN_PHYS(pfn)))
  return 1;
 return 0;
}
