
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (scalar_t__) ;
 scalar_t__ mr_cache ;
 scalar_t__ mw_cache ;

void ehca_cleanup_mrmw_cache(void)
{
 if (mr_cache)
  kmem_cache_destroy(mr_cache);
 if (mw_cache)
  kmem_cache_destroy(mw_cache);
}
