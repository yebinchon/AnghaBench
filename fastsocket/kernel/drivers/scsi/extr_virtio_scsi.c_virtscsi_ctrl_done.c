
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {int vdev; } ;
struct TYPE_2__ {int vq_lock; } ;
struct virtio_scsi {TYPE_1__ ctrl_vq; } ;
struct Scsi_Host {int dummy; } ;


 struct virtio_scsi* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct Scsi_Host* virtio_scsi_host (int ) ;
 int virtscsi_complete_free ;
 int virtscsi_vq_done (struct virtqueue*,int ) ;

__attribute__((used)) static void virtscsi_ctrl_done(struct virtqueue *vq)
{
 struct Scsi_Host *sh = virtio_scsi_host(vq->vdev);
 struct virtio_scsi *vscsi = shost_priv(sh);
 unsigned long flags;

 spin_lock_irqsave(&vscsi->ctrl_vq.vq_lock, flags);
 virtscsi_vq_done(vq, virtscsi_complete_free);
 spin_unlock_irqrestore(&vscsi->ctrl_vq.vq_lock, flags);
}
