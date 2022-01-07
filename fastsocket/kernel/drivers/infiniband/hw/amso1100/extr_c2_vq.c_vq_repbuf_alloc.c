
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_dev {int host_msg_cache; } ;


 int GFP_ATOMIC ;
 void* kmem_cache_alloc (int ,int ) ;

void *vq_repbuf_alloc(struct c2_dev *c2dev)
{
 return kmem_cache_alloc(c2dev->host_msg_cache, GFP_ATOMIC);
}
