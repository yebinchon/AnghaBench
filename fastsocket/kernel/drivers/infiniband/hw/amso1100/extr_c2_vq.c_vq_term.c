
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_dev {int host_msg_cache; } ;


 int kmem_cache_destroy (int ) ;

void vq_term(struct c2_dev *c2dev)
{
 kmem_cache_destroy(c2dev->host_msg_cache);
}
