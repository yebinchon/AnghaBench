
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ata_port* device; } ;
struct ata_port {int flags; scalar_t__ acpi_handle; TYPE_1__ link; } ;
struct ata_host {int n_ports; struct ata_port** ports; int acpi_handle; int dev; } ;
struct ata_device {int flags; scalar_t__ acpi_handle; TYPE_1__ link; } ;


 int ATA_FLAG_ACPI_SATA ;
 int DEVICE_ACPI_HANDLE (int ) ;
 int ata_acpi_ap_dock_ops ;
 int ata_acpi_associate_ide_port (struct ata_port*) ;
 int ata_acpi_associate_sata_port (struct ata_port*) ;
 int ata_acpi_dev_dock_ops ;
 int ata_link_max_devices (TYPE_1__*) ;
 int is_pci_dev (int ) ;
 scalar_t__ libata_noacpi ;
 int register_hotplug_dock_device (scalar_t__,int *,struct ata_port*) ;

void ata_acpi_associate(struct ata_host *host)
{
 int i, j;

 if (!is_pci_dev(host->dev) || libata_noacpi)
  return;

 host->acpi_handle = DEVICE_ACPI_HANDLE(host->dev);
 if (!host->acpi_handle)
  return;

 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];

  if (host->ports[0]->flags & ATA_FLAG_ACPI_SATA)
   ata_acpi_associate_sata_port(ap);
  else
   ata_acpi_associate_ide_port(ap);

  if (ap->acpi_handle) {

   register_hotplug_dock_device(ap->acpi_handle,
          &ata_acpi_ap_dock_ops, ap);
  }

  for (j = 0; j < ata_link_max_devices(&ap->link); j++) {
   struct ata_device *dev = &ap->link.device[j];

   if (dev->acpi_handle) {

    register_hotplug_dock_device(dev->acpi_handle,
          &ata_acpi_dev_dock_ops, dev);
   }
  }
 }
}
