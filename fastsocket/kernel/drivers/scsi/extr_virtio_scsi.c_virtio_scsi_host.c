
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {struct Scsi_Host* priv; } ;
struct Scsi_Host {int dummy; } ;



__attribute__((used)) static inline struct Scsi_Host *virtio_scsi_host(struct virtio_device *vdev)
{
 return vdev->priv;
}
