
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_qp {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int qp_cache ;

int ehca_init_qp_cache(void)
{
 qp_cache = kmem_cache_create("ehca_cache_qp",
         sizeof(struct ehca_qp), 0,
         SLAB_HWCACHE_ALIGN,
         ((void*)0));
 if (!qp_cache)
  return -ENOMEM;
 return 0;
}
