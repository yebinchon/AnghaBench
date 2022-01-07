
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_cq {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int cq_cache ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;

int ehca_init_cq_cache(void)
{
 cq_cache = kmem_cache_create("ehca_cache_cq",
         sizeof(struct ehca_cq), 0,
         SLAB_HWCACHE_ALIGN,
         ((void*)0));
 if (!cq_cache)
  return -ENOMEM;
 return 0;
}
