
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct ata_device* device; } ;
struct ata_port {int port_no; int flags; int pflags; int __acpi_init_gtm; void* acpi_handle; TYPE_1__ link; TYPE_2__* host; } ;
struct ata_device {void* acpi_handle; } ;
struct TYPE_4__ {void* acpi_handle; } ;


 int ATA_FLAG_SLAVE_POSS ;
 int ATA_PFLAG_INIT_GTM_VALID ;
 void* acpi_get_child (void*,int) ;
 scalar_t__ ata_acpi_gtm (struct ata_port*,int *) ;

__attribute__((used)) static void ata_acpi_associate_ide_port(struct ata_port *ap)
{
 int max_devices, i;

 ap->acpi_handle = acpi_get_child(ap->host->acpi_handle, ap->port_no);
 if (!ap->acpi_handle)
  return;

 max_devices = 1;
 if (ap->flags & ATA_FLAG_SLAVE_POSS)
  max_devices++;

 for (i = 0; i < max_devices; i++) {
  struct ata_device *dev = &ap->link.device[i];

  dev->acpi_handle = acpi_get_child(ap->acpi_handle, i);
 }

 if (ata_acpi_gtm(ap, &ap->__acpi_init_gtm) == 0)
  ap->pflags |= ATA_PFLAG_INIT_GTM_VALID;
}
