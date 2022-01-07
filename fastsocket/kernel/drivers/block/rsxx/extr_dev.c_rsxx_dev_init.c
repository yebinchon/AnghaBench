
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int KMEM_CACHE (int ,int ) ;
 int SLAB_HWCACHE_ALIGN ;
 int bio_meta_pool ;
 int rsxx_bio_meta ;

int rsxx_dev_init(void)
{
 bio_meta_pool = KMEM_CACHE(rsxx_bio_meta, SLAB_HWCACHE_ALIGN);
 if (!bio_meta_pool)
  return -ENOMEM;

 return 0;
}
