
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct page {int flags; } ;
struct TYPE_3__ {scalar_t__ n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 int KM_USER0 ;
 int KM_USER1 ;
 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 int PG_dcache_dirty ;
 int __flush_purge_region (void*,int ) ;
 TYPE_2__ boot_cpu_data ;
 int copy_page (void*,void*) ;
 void* kmap_atomic (struct page*,int ) ;
 void* kmap_coherent (struct page*,unsigned long) ;
 int kunmap_atomic (void*,int ) ;
 int kunmap_coherent (void*) ;
 scalar_t__ page_mapped (struct page*) ;
 scalar_t__ pages_do_alias (unsigned long,unsigned long) ;
 int smp_wmb () ;
 int test_bit (int ,int *) ;

void copy_user_highpage(struct page *to, struct page *from,
   unsigned long vaddr, struct vm_area_struct *vma)
{
 void *vfrom, *vto;

 vto = kmap_atomic(to, KM_USER1);

 if (boot_cpu_data.dcache.n_aliases && page_mapped(from) &&
     !test_bit(PG_dcache_dirty, &from->flags)) {
  vfrom = kmap_coherent(from, vaddr);
  copy_page(vto, vfrom);
  kunmap_coherent(vfrom);
 } else {
  vfrom = kmap_atomic(from, KM_USER0);
  copy_page(vto, vfrom);
  kunmap_atomic(vfrom, KM_USER0);
 }

 if (pages_do_alias((unsigned long)vto, vaddr & PAGE_MASK))
  __flush_purge_region(vto, PAGE_SIZE);

 kunmap_atomic(vto, KM_USER1);

 smp_wmb();
}
