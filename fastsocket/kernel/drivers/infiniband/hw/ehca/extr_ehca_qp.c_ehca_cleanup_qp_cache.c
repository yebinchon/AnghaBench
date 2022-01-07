
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (scalar_t__) ;
 scalar_t__ qp_cache ;

void ehca_cleanup_qp_cache(void)
{
 if (qp_cache)
  kmem_cache_destroy(qp_cache);
}
