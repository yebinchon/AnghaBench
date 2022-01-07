
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int host; } ;
struct ata_port {int dummy; } ;


 int __ata_change_queue_depth (struct ata_port*,struct scsi_device*,int,int) ;
 struct ata_port* ata_shost_to_port (int ) ;

int ata_scsi_change_queue_depth(struct scsi_device *sdev, int queue_depth,
    int reason)
{
 struct ata_port *ap = ata_shost_to_port(sdev->host);

 return __ata_change_queue_depth(ap, sdev, queue_depth, reason);
}
