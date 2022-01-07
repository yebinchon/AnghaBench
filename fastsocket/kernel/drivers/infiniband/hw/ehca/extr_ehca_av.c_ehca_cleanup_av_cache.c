
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ av_cache ;
 int kmem_cache_destroy (scalar_t__) ;

void ehca_cleanup_av_cache(void)
{
 if (av_cache)
  kmem_cache_destroy(av_cache);
}
