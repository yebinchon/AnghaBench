
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
 int memcpy_toio (void*,void*,int ) ;
 scalar_t__ pgprot_val (int ) ;
 void* vmap (struct page**,int,int ,int ) ;
 int vunmap (void*) ;

__attribute__((used)) static int ttm_copy_ttm_io_page(struct ttm_tt *ttm, void *dst,
    unsigned long page,
    pgprot_t prot)
{
 struct page *s = ttm->pages[page];
 void *src;

 if (!s)
  return -ENOMEM;

 dst = (void *)((unsigned long)dst + (page << PAGE_SHIFT));



 if (pgprot_val(prot) != pgprot_val(PAGE_KERNEL))
  src = vmap(&s, 1, 0, prot);
 else
  src = kmap(s);

 if (!src)
  return -ENOMEM;

 memcpy_toio(dst, src, PAGE_SIZE);




 if (pgprot_val(prot) != pgprot_val(PAGE_KERNEL))
  vunmap(src);
 else
  kunmap(s);


 return 0;
}
