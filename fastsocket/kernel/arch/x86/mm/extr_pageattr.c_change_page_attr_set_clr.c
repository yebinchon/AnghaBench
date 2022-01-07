
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct cpa_data {unsigned long* vaddr; int numpages; int flags; int force_split; scalar_t__ curpage; void* mask_clr; void* mask_set; struct page** pages; } ;
typedef void* pgprot_t ;


 int CPA_ARRAY ;
 int CPA_FLUSHTLB ;
 int CPA_PAGES_ARRAY ;
 unsigned long PAGE_MASK ;
 int WARN_ON_ONCE (int) ;
 int _PAGE_NX ;
 int __change_page_attr_set_clr (struct cpa_data*,int) ;
 int cache_attr (void*) ;
 void* canon_pgprot (void*) ;
 int cpa_flush_all (int) ;
 int cpa_flush_array (unsigned long*,int,int,int,struct page**) ;
 int cpa_flush_range (unsigned long,int,int) ;
 scalar_t__ cpu_has_clflush ;
 int kmap_flush_unused () ;
 int pgprot_val (void*) ;
 int vm_unmap_aliases () ;

__attribute__((used)) static int change_page_attr_set_clr(unsigned long *addr, int numpages,
        pgprot_t mask_set, pgprot_t mask_clr,
        int force_split, int in_flag,
        struct page **pages)
{
 struct cpa_data cpa;
 int ret, cache, checkalias;
 unsigned long baddr = 0;





 mask_set = canon_pgprot(mask_set);
 mask_clr = canon_pgprot(mask_clr);
 if (!pgprot_val(mask_set) && !pgprot_val(mask_clr) && !force_split)
  return 0;


 if (in_flag & CPA_ARRAY) {
  int i;
  for (i = 0; i < numpages; i++) {
   if (addr[i] & ~PAGE_MASK) {
    addr[i] &= PAGE_MASK;
    WARN_ON_ONCE(1);
   }
  }
 } else if (!(in_flag & CPA_PAGES_ARRAY)) {




  if (*addr & ~PAGE_MASK) {
   *addr &= PAGE_MASK;



   WARN_ON_ONCE(1);
  }




  baddr = *addr;
 }


 kmap_flush_unused();

 vm_unmap_aliases();

 cpa.vaddr = addr;
 cpa.pages = pages;
 cpa.numpages = numpages;
 cpa.mask_set = mask_set;
 cpa.mask_clr = mask_clr;
 cpa.flags = 0;
 cpa.curpage = 0;
 cpa.force_split = force_split;

 if (in_flag & (CPA_ARRAY | CPA_PAGES_ARRAY))
  cpa.flags |= in_flag;


 checkalias = (pgprot_val(mask_set) | pgprot_val(mask_clr)) != _PAGE_NX;

 ret = __change_page_attr_set_clr(&cpa, checkalias);




 if (!(cpa.flags & CPA_FLUSHTLB))
  goto out;





 cache = cache_attr(mask_set);







 if (!ret && cpu_has_clflush) {
  if (cpa.flags & (CPA_PAGES_ARRAY | CPA_ARRAY)) {
   cpa_flush_array(addr, numpages, cache,
     cpa.flags, pages);
  } else
   cpa_flush_range(baddr, numpages, cache);
 } else
  cpa_flush_all(cache);

out:
 return ret;
}
