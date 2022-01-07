
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int small_qp_cache ;

void ehca_cleanup_small_qp_cache(void)
{
 kmem_cache_destroy(small_qp_cache);
}
