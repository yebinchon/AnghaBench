
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_dev {int host_msg_cache; } ;


 int kmem_cache_free (int ,void*) ;

void vq_repbuf_free(struct c2_dev *c2dev, void *reply)
{
 kmem_cache_free(c2dev->host_msg_cache, reply);
}
