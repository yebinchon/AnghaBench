
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (scalar_t__) ;
 scalar_t__ pd_cache ;

void ehca_cleanup_pd_cache(void)
{
 if (pd_cache)
  kmem_cache_destroy(pd_cache);
}
