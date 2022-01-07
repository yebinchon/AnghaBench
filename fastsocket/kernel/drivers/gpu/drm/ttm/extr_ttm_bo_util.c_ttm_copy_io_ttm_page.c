
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {struct page** pages; } ;
struct page {int dummy; } ;
typedef int pgprot_t ;


 int ENOMEM ;
 int KM_USER0 ;
 int PAGE_KERNEL ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 void* kmap (struct page*) ;
 void* kmap_atomic_prot (struct page*,int ,int ) ;
 int kunmap (struct page*) ;
 int kunmap_atomic (void*,int ) ;
 int memcpy_fromio (void*,void*,int ) ;
 scalar_t__ pgprot_val (int ) ;
 void* vmap (struct page**,int,int ,int ) ;
 int vunmap (void*) ;

__attribute__((used)) static int ttm_copy_io_ttm_page(struct ttm_tt *ttm, void *src,
    unsigned long page,
    pgprot_t prot)
{
 struct page *d = ttm->pages[page];
 void *dst;

 if (!d)
  return -ENOMEM;

 src = (void *)((unsigned long)src + (page << PAGE_SHIFT));




 if (pgprot_val(prot) != pgprot_val(PAGE_KERNEL))
  dst = vmap(&d, 1, 0, prot);
 else
  dst = kmap(d);

 if (!dst)
  return -ENOMEM;

 memcpy_fromio(dst, src, PAGE_SIZE);




 if (pgprot_val(prot) != pgprot_val(PAGE_KERNEL))
  vunmap(dst);
 else
  kunmap(d);


 return 0;
}
