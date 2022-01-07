
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
struct ata_eh_context {TYPE_3__ i; } ;
struct TYPE_5__ {struct ata_eh_context eh_context; } ;
struct ata_port {int flags; int pflags; TYPE_2__ link; } ;
struct ata_device {int flags; int * acpi_handle; TYPE_1__* link; } ;
struct TYPE_4__ {struct ata_port* ap; } ;


 int ATA_DFLAG_ACPI_FAILED ;
 int ATA_DFLAG_ACPI_PENDING ;
 int ATA_EHI_DID_HARDRESET ;
 int ATA_FLAG_ACPI_SATA ;
 int ATA_PFLAG_FROZEN ;
 int EINVAL ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int ata_acpi_exec_tfs (struct ata_device*,int*) ;
 int ata_acpi_push_id (struct ata_device*) ;
 int ata_dev_printk (struct ata_device*,int ,char*) ;
 int ata_dev_reread_id (struct ata_device*,int ) ;

int ata_acpi_on_devcfg(struct ata_device *dev)
{
 struct ata_port *ap = dev->link->ap;
 struct ata_eh_context *ehc = &ap->link.eh_context;
 int acpi_sata = ap->flags & ATA_FLAG_ACPI_SATA;
 int nr_executed = 0;
 int rc;

 if (!dev->acpi_handle)
  return 0;


 if (!(dev->flags & ATA_DFLAG_ACPI_PENDING) &&
     !(acpi_sata && (ehc->i.flags & ATA_EHI_DID_HARDRESET)))
  return 0;


 if (acpi_sata) {
  rc = ata_acpi_push_id(dev);
  if (rc)
   goto acpi_err;
 }


 rc = ata_acpi_exec_tfs(dev, &nr_executed);
 if (rc)
  goto acpi_err;

 dev->flags &= ~ATA_DFLAG_ACPI_PENDING;


 if (nr_executed) {
  rc = ata_dev_reread_id(dev, 0);
  if (rc < 0) {
   ata_dev_printk(dev, KERN_ERR, "failed to IDENTIFY "
           "after ACPI commands\n");
   return rc;
  }
 }

 return 0;

 acpi_err:

 if (rc == -EINVAL && !nr_executed && !(ap->pflags & ATA_PFLAG_FROZEN))
  return 0;


 if (!(dev->flags & ATA_DFLAG_ACPI_FAILED)) {
  dev->flags |= ATA_DFLAG_ACPI_FAILED;
  return rc;
 }

 ata_dev_printk(dev, KERN_WARNING,
         "ACPI: failed the second time, disabled\n");
 dev->acpi_handle = ((void*)0);




 if (!nr_executed && !(ap->pflags & ATA_PFLAG_FROZEN))
  return 0;

 return rc;
}
