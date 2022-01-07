
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;


 int PAGE_SHIFT ;
 struct page* pfn_to_page (int) ;
 int set_page_memtype (struct page*,int) ;

__attribute__((used)) static int free_ram_pages_type(u64 start, u64 end)
{
 struct page *page;
 u64 pfn;

 for (pfn = (start >> PAGE_SHIFT); pfn < (end >> PAGE_SHIFT); ++pfn) {
  page = pfn_to_page(pfn);
  set_page_memtype(page, -1);
 }
 return 0;
}
