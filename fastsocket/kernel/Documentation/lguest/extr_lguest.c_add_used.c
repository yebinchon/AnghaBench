
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vring_used_elem {unsigned int id; int len; } ;
struct TYPE_4__ {size_t num; TYPE_1__* used; } ;
struct virtqueue {int pending_used; TYPE_2__ vring; } ;
struct TYPE_3__ {size_t idx; struct vring_used_elem* ring; } ;


 int wmb () ;

__attribute__((used)) static void add_used(struct virtqueue *vq, unsigned int head, int len)
{
 struct vring_used_elem *used;





 used = &vq->vring.used->ring[vq->vring.used->idx % vq->vring.num];
 used->id = head;
 used->len = len;

 wmb();
 vq->vring.used->idx++;
 vq->pending_used++;
}
