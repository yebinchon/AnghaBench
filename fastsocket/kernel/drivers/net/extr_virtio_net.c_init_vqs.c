
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtnet_info {TYPE_2__* dev; TYPE_3__* vdev; struct virtqueue* cvq; struct virtqueue* svq; struct virtqueue* rvq; } ;
struct TYPE_7__ {TYPE_1__* config; } ;
struct TYPE_6__ {int features; } ;
struct TYPE_5__ {int (* find_vqs ) (TYPE_3__*,int,struct virtqueue**,int **,char const**) ;} ;


 int NETIF_F_HW_VLAN_FILTER ;
 int VIRTIO_NET_F_CTRL_VLAN ;
 int VIRTIO_NET_F_CTRL_VQ ;
 int * skb_recv_done ;
 int * skb_xmit_done ;
 int stub1 (TYPE_3__*,int,struct virtqueue**,int **,char const**) ;
 scalar_t__ virtio_has_feature (TYPE_3__*,int ) ;

__attribute__((used)) static int init_vqs(struct virtnet_info *vi)
{
 struct virtqueue *vqs[3];
 vq_callback_t *callbacks[] = { skb_recv_done, skb_xmit_done, ((void*)0)};
 const char *names[] = { "input", "output", "control" };
 int nvqs, err;



 nvqs = virtio_has_feature(vi->vdev, VIRTIO_NET_F_CTRL_VQ) ? 3 : 2;

 err = vi->vdev->config->find_vqs(vi->vdev, nvqs, vqs, callbacks, names);
 if (err)
  return err;

 vi->rvq = vqs[0];
 vi->svq = vqs[1];

 if (virtio_has_feature(vi->vdev, VIRTIO_NET_F_CTRL_VQ)) {
  vi->cvq = vqs[2];

  if (virtio_has_feature(vi->vdev, VIRTIO_NET_F_CTRL_VLAN))
   vi->dev->features |= NETIF_F_HW_VLAN_FILTER;
 }
 return 0;
}
