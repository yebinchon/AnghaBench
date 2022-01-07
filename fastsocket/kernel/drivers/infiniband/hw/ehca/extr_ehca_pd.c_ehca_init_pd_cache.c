
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_pd {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int pd_cache ;

int ehca_init_pd_cache(void)
{
 pd_cache = kmem_cache_create("ehca_cache_pd",
         sizeof(struct ehca_pd), 0,
         SLAB_HWCACHE_ALIGN,
         ((void*)0));
 if (!pd_cache)
  return -ENOMEM;
 return 0;
}
