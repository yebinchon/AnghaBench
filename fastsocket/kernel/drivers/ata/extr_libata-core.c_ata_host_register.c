
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_host_template {int dummy; } ;
struct TYPE_4__ {int desc; } ;
struct TYPE_3__ {TYPE_2__ eh_info; } ;
struct ata_port {scalar_t__ cbl; int flags; TYPE_1__ link; int udma_mask; int mwdma_mask; int pio_mask; TYPE_1__* slave_link; int print_id; } ;
struct ata_host {int flags; int n_ports; struct ata_port** ports; int dev; } ;


 scalar_t__ ATA_CBL_NONE ;
 scalar_t__ ATA_CBL_SATA ;
 int ATA_FLAG_SATA ;
 int ATA_HOST_STARTED ;
 int EINVAL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int WARN_ON (int) ;
 int async_port_probe ;
 int async_schedule (int ,struct ata_port*) ;
 int ata_acpi_associate (struct ata_host*) ;
 int ata_ehi_clear_desc (TYPE_2__*) ;
 int ata_mode_string (unsigned long) ;
 unsigned long ata_pack_xfermask (int ,int ,int ) ;
 int ata_port_is_dummy (struct ata_port*) ;
 int ata_port_printk (struct ata_port*,int ,char*,...) ;
 int ata_print_id ;
 int ata_scsi_add_hosts (struct ata_host*,struct scsi_host_template*) ;
 int atomic_inc_return (int *) ;
 int dev_printk (int ,int ,char*) ;
 int kfree (struct ata_port*) ;
 int sata_link_init_spd (TYPE_1__*) ;

int ata_host_register(struct ata_host *host, struct scsi_host_template *sht)
{
 int i, rc;


 if (!(host->flags & ATA_HOST_STARTED)) {
  dev_printk(KERN_ERR, host->dev,
      "BUG: trying to register unstarted host\n");
  WARN_ON(1);
  return -EINVAL;
 }





 for (i = host->n_ports; host->ports[i]; i++)
  kfree(host->ports[i]);


 for (i = 0; i < host->n_ports; i++)
  host->ports[i]->print_id = atomic_inc_return(&ata_print_id);

 rc = ata_scsi_add_hosts(host, sht);
 if (rc)
  return rc;


 ata_acpi_associate(host);


 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];
  unsigned long xfer_mask;


  if (ap->cbl == ATA_CBL_NONE && (ap->flags & ATA_FLAG_SATA))
   ap->cbl = ATA_CBL_SATA;


  sata_link_init_spd(&ap->link);
  if (ap->slave_link)
   sata_link_init_spd(ap->slave_link);


  xfer_mask = ata_pack_xfermask(ap->pio_mask, ap->mwdma_mask,
           ap->udma_mask);

  if (!ata_port_is_dummy(ap)) {
   ata_port_printk(ap, KERN_INFO,
     "%cATA max %s %s\n",
     (ap->flags & ATA_FLAG_SATA) ? 'S' : 'P',
     ata_mode_string(xfer_mask),
     ap->link.eh_info.desc);
   ata_ehi_clear_desc(&ap->link.eh_info);
  } else
   ata_port_printk(ap, KERN_INFO, "DUMMY\n");
 }


 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];
  async_schedule(async_port_probe, ap);
 }

 return 0;
}
