
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct virtio_scsi {int ** tgt; } ;
struct virtio_device {TYPE_1__* config; } ;
struct Scsi_Host {size_t max_id; } ;
struct TYPE_2__ {int (* del_vqs ) (struct virtio_device*) ;int (* reset ) (struct virtio_device*) ;} ;


 int kfree (int *) ;
 struct virtio_scsi* shost_priv (struct Scsi_Host*) ;
 int stub1 (struct virtio_device*) ;
 int stub2 (struct virtio_device*) ;
 struct Scsi_Host* virtio_scsi_host (struct virtio_device*) ;

__attribute__((used)) static void virtscsi_remove_vqs(struct virtio_device *vdev)
{
 struct Scsi_Host *sh = virtio_scsi_host(vdev);
 struct virtio_scsi *vscsi = shost_priv(sh);
 u32 i, num_targets;


 vdev->config->reset(vdev);

 num_targets = sh->max_id;
 for (i = 0; i < num_targets; i++) {
  kfree(vscsi->tgt[i]);
  vscsi->tgt[i] = ((void*)0);
 }

 vdev->config->del_vqs(vdev);
}
