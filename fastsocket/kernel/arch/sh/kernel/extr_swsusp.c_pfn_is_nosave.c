
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 int __nosave_begin ;
 int __nosave_end ;
 unsigned long __pa (int *) ;

int pfn_is_nosave(unsigned long pfn)
{
 unsigned long begin_pfn = __pa(&__nosave_begin) >> PAGE_SHIFT;
 unsigned long end_pfn = PAGE_ALIGN(__pa(&__nosave_end)) >> PAGE_SHIFT;

 return (pfn >= begin_pfn) && (pfn < end_pfn);
}
