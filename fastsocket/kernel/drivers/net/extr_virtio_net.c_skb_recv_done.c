
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct virtnet_info {int napi; } ;
struct TYPE_2__ {struct virtnet_info* priv; } ;


 int __napi_schedule (int *) ;
 scalar_t__ napi_schedule_prep (int *) ;
 int virtqueue_disable_cb (struct virtqueue*) ;

__attribute__((used)) static void skb_recv_done(struct virtqueue *rvq)
{
 struct virtnet_info *vi = rvq->vdev->priv;

 if (napi_schedule_prep(&vi->napi)) {
  virtqueue_disable_cb(rvq);
  __napi_schedule(&vi->napi);
 }
}
