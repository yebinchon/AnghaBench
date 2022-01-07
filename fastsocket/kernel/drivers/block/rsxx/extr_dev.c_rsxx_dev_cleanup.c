
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bio_meta_pool ;
 int kmem_cache_destroy (int ) ;

void rsxx_dev_cleanup(void)
{
 kmem_cache_destroy(bio_meta_pool);
}
