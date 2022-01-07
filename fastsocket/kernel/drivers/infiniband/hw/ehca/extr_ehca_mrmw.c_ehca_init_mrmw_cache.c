
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_mw {int dummy; } ;
struct ehca_mr {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 void* kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (int *) ;
 int * mr_cache ;
 void* mw_cache ;

int ehca_init_mrmw_cache(void)
{
 mr_cache = kmem_cache_create("ehca_cache_mr",
         sizeof(struct ehca_mr), 0,
         SLAB_HWCACHE_ALIGN,
         ((void*)0));
 if (!mr_cache)
  return -ENOMEM;
 mw_cache = kmem_cache_create("ehca_cache_mw",
         sizeof(struct ehca_mw), 0,
         SLAB_HWCACHE_ALIGN,
         ((void*)0));
 if (!mw_cache) {
  kmem_cache_destroy(mr_cache);
  mr_cache = ((void*)0);
  return -ENOMEM;
 }
 return 0;
}
