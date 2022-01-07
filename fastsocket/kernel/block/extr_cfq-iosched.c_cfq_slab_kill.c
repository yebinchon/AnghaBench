
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cfq_ioc_pool ;
 scalar_t__ cfq_pool ;
 int kmem_cache_destroy (scalar_t__) ;

__attribute__((used)) static void cfq_slab_kill(void)
{




 if (cfq_pool)
  kmem_cache_destroy(cfq_pool);
 if (cfq_ioc_pool)
  kmem_cache_destroy(cfq_ioc_pool);
}
