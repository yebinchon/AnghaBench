
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int host; } ;
struct ata_port {int dummy; } ;
struct ata_device {int dummy; } ;


 struct ata_device* __ata_scsi_find_dev (struct ata_port*,struct scsi_device*) ;
 int ata_scsi_dev_config (struct scsi_device*,struct ata_device*) ;
 int ata_scsi_sdev_config (struct scsi_device*) ;
 struct ata_port* ata_shost_to_port (int ) ;

int ata_scsi_slave_config(struct scsi_device *sdev)
{
 struct ata_port *ap = ata_shost_to_port(sdev->host);
 struct ata_device *dev = __ata_scsi_find_dev(ap, sdev);
 int rc = 0;

 ata_scsi_sdev_config(sdev);

 if (dev)
  rc = ata_scsi_dev_config(sdev, dev);

 return rc;
}
