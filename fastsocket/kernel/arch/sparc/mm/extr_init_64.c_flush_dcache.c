
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long flags; } ;


 unsigned long PG_dcache_cpu_mask ;
 unsigned long PG_dcache_cpu_shift ;
 unsigned long PG_dcache_dirty ;
 int clear_dcache_dirty_cpu (struct page*,int) ;
 int flush_dcache_page_impl (struct page*) ;
 int get_cpu () ;
 struct page* pfn_to_page (unsigned long) ;
 int put_cpu () ;
 int smp_flush_dcache_page_impl (struct page*,int) ;

__attribute__((used)) static void flush_dcache(unsigned long pfn)
{
 struct page *page;

 page = pfn_to_page(pfn);
 if (page) {
  unsigned long pg_flags;

  pg_flags = page->flags;
  if (pg_flags & (1UL << PG_dcache_dirty)) {
   int cpu = ((pg_flags >> PG_dcache_cpu_shift) &
       PG_dcache_cpu_mask);
   int this_cpu = get_cpu();




   if (cpu == this_cpu)
    flush_dcache_page_impl(page);
   else
    smp_flush_dcache_page_impl(page, cpu);

   clear_dcache_dirty_cpu(page, cpu);

   put_cpu();
  }
 }
}
