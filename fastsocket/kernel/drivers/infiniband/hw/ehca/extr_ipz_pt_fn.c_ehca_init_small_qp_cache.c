
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipz_small_queue_page {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int small_qp_cache ;

int ehca_init_small_qp_cache(void)
{
 small_qp_cache = kmem_cache_create("ehca_cache_small_qp",
        sizeof(struct ipz_small_queue_page),
        0, SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!small_qp_cache)
  return -ENOMEM;

 return 0;
}
