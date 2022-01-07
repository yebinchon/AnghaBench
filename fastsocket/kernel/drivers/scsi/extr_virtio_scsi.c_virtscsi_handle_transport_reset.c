
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_scsi_event {unsigned int* lun; int reason; } ;
struct virtio_scsi {int vdev; } ;
struct scsi_device {int dummy; } ;
struct Scsi_Host {int host_no; } ;




 int pr_err (char*,int ,unsigned int,unsigned int) ;
 int pr_info (char*,int) ;
 int scsi_add_device (struct Scsi_Host*,int ,unsigned int,unsigned int) ;
 struct scsi_device* scsi_device_lookup (struct Scsi_Host*,int ,unsigned int,unsigned int) ;
 int scsi_device_put (struct scsi_device*) ;
 int scsi_remove_device (struct scsi_device*) ;
 struct Scsi_Host* virtio_scsi_host (int ) ;

__attribute__((used)) static void virtscsi_handle_transport_reset(struct virtio_scsi *vscsi,
      struct virtio_scsi_event *event)
{
 struct scsi_device *sdev;
 struct Scsi_Host *shost = virtio_scsi_host(vscsi->vdev);
 unsigned int target = event->lun[1];
 unsigned int lun = (event->lun[2] << 8) | event->lun[3];

 switch (event->reason) {
 case 128:
  scsi_add_device(shost, 0, target, lun);
  break;
 case 129:
  sdev = scsi_device_lookup(shost, 0, target, lun);
  if (sdev) {
   scsi_remove_device(sdev);
   scsi_device_put(sdev);
  } else {
   pr_err("SCSI device %d 0 %d %d not found\n",
    shost->host_no, target, lun);
  }
  break;
 default:
  pr_info("Unsupport virtio scsi event reason %x\n", event->reason);
 }
}
