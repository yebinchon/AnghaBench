
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;


 unsigned long PAGE_SHIFT ;
 int __remove_pages (struct zone*,unsigned long,unsigned int) ;
 scalar_t__ __va (unsigned long) ;
 int lmb_remove (unsigned long,unsigned int) ;
 struct zone* page_zone (int ) ;
 int pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 int remove_section_mapping (unsigned long,unsigned long) ;
 int vm_unmap_aliases () ;

__attribute__((used)) static int pseries_remove_lmb(unsigned long base, unsigned int lmb_size)
{
 unsigned long start, start_pfn;
 struct zone *zone;
 int ret;

 start_pfn = base >> PAGE_SHIFT;

 if (!pfn_valid(start_pfn)) {
  lmb_remove(base, lmb_size);
  return 0;
 }

 zone = page_zone(pfn_to_page(start_pfn));
 ret = __remove_pages(zone, start_pfn, lmb_size >> PAGE_SHIFT);
 if (ret)
  return ret;




 lmb_remove(base, lmb_size);




 start = (unsigned long)__va(base);
 ret = remove_section_mapping(start, start + lmb_size);




 vm_unmap_aliases();

 return ret;
}
