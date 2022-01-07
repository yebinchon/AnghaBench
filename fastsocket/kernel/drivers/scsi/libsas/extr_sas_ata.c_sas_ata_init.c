
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct Scsi_Host* shost; } ;
struct sas_ha_struct {int dev; TYPE_1__ core; } ;
struct TYPE_5__ {struct ata_port* ap; int ata_host; } ;
struct domain_device {TYPE_2__ sata_dev; TYPE_3__* port; } ;
struct ata_port {struct Scsi_Host* scsi_host; int cbl; struct domain_device* private_data; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {struct sas_ha_struct* ha; } ;


 int ATA_CBL_SATA ;
 int ENODEV ;
 int SAS_DPRINTK (char*) ;
 int ata_host_init (int *,int ,int *) ;
 struct ata_port* ata_sas_port_alloc (int *,int *,struct Scsi_Host*) ;
 int ata_sas_port_destroy (struct ata_port*) ;
 int ata_sas_port_init (struct ata_port*) ;
 int sas_sata_ops ;
 int sata_port_info ;

int sas_ata_init(struct domain_device *found_dev)
{
 struct sas_ha_struct *ha = found_dev->port->ha;
 struct Scsi_Host *shost = ha->core.shost;
 struct ata_port *ap;
 int rc;

 ata_host_init(&found_dev->sata_dev.ata_host, ha->dev, &sas_sata_ops);
 ap = ata_sas_port_alloc(&found_dev->sata_dev.ata_host,
    &sata_port_info,
    shost);
 if (!ap) {
  SAS_DPRINTK("ata_sas_port_alloc failed.\n");
  return -ENODEV;
 }

 ap->private_data = found_dev;
 ap->cbl = ATA_CBL_SATA;
 ap->scsi_host = shost;
 rc = ata_sas_port_init(ap);
 if (rc) {
  ata_sas_port_destroy(ap);
  return rc;
 }
 found_dev->sata_dev.ap = ap;

 return 0;
}
