
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct virtio_scsi_vq {struct virtqueue* vq; int vq_lock; } ;


 int spin_lock_init (int *) ;

__attribute__((used)) static void virtscsi_init_vq(struct virtio_scsi_vq *virtscsi_vq,
        struct virtqueue *vq)
{
 spin_lock_init(&virtscsi_vq->vq_lock);
 virtscsi_vq->vq = vq;
}
