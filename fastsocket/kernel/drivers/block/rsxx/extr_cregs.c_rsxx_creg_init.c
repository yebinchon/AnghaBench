
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int KMEM_CACHE (int ,int ) ;
 int SLAB_HWCACHE_ALIGN ;
 int creg_cmd ;
 int creg_cmd_pool ;

int rsxx_creg_init(void)
{
 creg_cmd_pool = KMEM_CACHE(creg_cmd, SLAB_HWCACHE_ALIGN);
 if (!creg_cmd_pool)
  return -ENOMEM;

 return 0;
}
