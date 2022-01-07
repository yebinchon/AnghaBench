
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf_pool_cache ;
 int kmem_cache_destroy (int ) ;

void
aoeblk_exit(void)
{
 kmem_cache_destroy(buf_pool_cache);
}
