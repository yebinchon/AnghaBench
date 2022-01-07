
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
struct address_space {int dummy; } ;


 int PG_dcache_dirty ;
 struct page* ZERO_PAGE (int ) ;
 int dcache_dirty_cpu (struct page*) ;
 int flush_dcache_page_impl (struct page*) ;
 int get_cpu () ;
 scalar_t__ hypervisor ;
 int mapping_mapped (struct address_space*) ;
 struct address_space* page_mapping (struct page*) ;
 int put_cpu () ;
 int set_dcache_dirty (struct page*,int) ;
 int smp_flush_dcache_page_impl (struct page*,int) ;
 int test_bit (int ,int *) ;
 scalar_t__ tlb_type ;

void flush_dcache_page(struct page *page)
{
 struct address_space *mapping;
 int this_cpu;

 if (tlb_type == hypervisor)
  return;





 if (page == ZERO_PAGE(0))
  return;

 this_cpu = get_cpu();

 mapping = page_mapping(page);
 if (mapping && !mapping_mapped(mapping)) {
  int dirty = test_bit(PG_dcache_dirty, &page->flags);
  if (dirty) {
   int dirty_cpu = dcache_dirty_cpu(page);

   if (dirty_cpu == this_cpu)
    goto out;
   smp_flush_dcache_page_impl(page, dirty_cpu);
  }
  set_dcache_dirty(page, this_cpu);
 } else {





  flush_dcache_page_impl(page);
 }

out:
 put_cpu();
}
