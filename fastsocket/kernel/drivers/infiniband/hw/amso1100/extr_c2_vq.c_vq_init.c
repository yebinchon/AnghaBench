
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_size; } ;
struct c2_dev {int * host_msg_cache; TYPE_1__ rep_vq; int vq_cache_name; scalar_t__ devnum; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int * kmem_cache_create (int ,int ,int ,int ,int *) ;
 int sprintf (int ,char*,char) ;

int vq_init(struct c2_dev *c2dev)
{
 sprintf(c2dev->vq_cache_name, "c2-vq:dev%c",
  (char) ('0' + c2dev->devnum));
 c2dev->host_msg_cache =
     kmem_cache_create(c2dev->vq_cache_name, c2dev->rep_vq.msg_size, 0,
         SLAB_HWCACHE_ALIGN, ((void*)0));
 if (c2dev->host_msg_cache == ((void*)0)) {
  return -ENOMEM;
 }
 return 0;
}
