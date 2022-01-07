
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_av {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int av_cache ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;

int ehca_init_av_cache(void)
{
 av_cache = kmem_cache_create("ehca_cache_av",
       sizeof(struct ehca_av), 0,
       SLAB_HWCACHE_ALIGN,
       ((void*)0));
 if (!av_cache)
  return -ENOMEM;
 return 0;
}
