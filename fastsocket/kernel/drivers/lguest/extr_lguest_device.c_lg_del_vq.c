
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {struct lguest_vq_info* priv; } ;
struct TYPE_2__ {int irq; } ;
struct lguest_vq_info {int pages; TYPE_1__ config; } ;


 int free_irq (int ,struct virtqueue*) ;
 int kfree (struct lguest_vq_info*) ;
 int lguest_unmap (int ) ;
 int vring_del_virtqueue (struct virtqueue*) ;

__attribute__((used)) static void lg_del_vq(struct virtqueue *vq)
{
 struct lguest_vq_info *lvq = vq->priv;


 free_irq(lvq->config.irq, vq);

 vring_del_virtqueue(vq);

 lguest_unmap(lvq->pages);

 kfree(lvq);
}
