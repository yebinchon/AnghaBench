
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct virtnet_info {int dev; } ;
struct TYPE_2__ {struct virtnet_info* priv; } ;


 int netif_wake_queue (int ) ;
 int virtqueue_disable_cb (struct virtqueue*) ;

__attribute__((used)) static void skb_xmit_done(struct virtqueue *svq)
{
 struct virtnet_info *vi = svq->vdev->priv;


 virtqueue_disable_cb(svq);


 netif_wake_queue(vi->dev);
}
