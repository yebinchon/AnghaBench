
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {TYPE_1__* sdev_target; } ;
struct ipr_sata_port {int ap; } ;
struct TYPE_2__ {struct ipr_sata_port* hostdata; } ;


 int ENTER ;
 int ENXIO ;
 int LEAVE ;
 int ata_sas_port_init (int ) ;
 int ata_sas_sync_probe (int ) ;
 int ipr_slave_destroy (struct scsi_device*) ;

__attribute__((used)) static int ipr_ata_slave_alloc(struct scsi_device *sdev)
{
 struct ipr_sata_port *sata_port = ((void*)0);
 int rc = -ENXIO;

 ENTER;
 if (sdev->sdev_target)
  sata_port = sdev->sdev_target->hostdata;
 if (sata_port) {
  rc = ata_sas_port_init(sata_port->ap);
  if (rc == 0)
   rc = ata_sas_sync_probe(sata_port->ap);
 }

 if (rc)
  ipr_slave_destroy(sdev);

 LEAVE;
 return rc;
}
