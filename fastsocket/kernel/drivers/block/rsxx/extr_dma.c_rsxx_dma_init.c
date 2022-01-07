
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int KMEM_CACHE (int ,int ) ;
 int SLAB_HWCACHE_ALIGN ;
 int rsxx_dma ;
 int rsxx_dma_pool ;

int rsxx_dma_init(void)
{
 rsxx_dma_pool = KMEM_CACHE(rsxx_dma, SLAB_HWCACHE_ALIGN);
 if (!rsxx_dma_pool)
  return -ENOMEM;

 return 0;
}
