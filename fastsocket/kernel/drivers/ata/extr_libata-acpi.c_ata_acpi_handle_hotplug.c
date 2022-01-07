
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ata_eh_info {int dummy; } ;
struct TYPE_2__ {struct ata_eh_info eh_info; } ;
struct ata_port {int lock; int acpi_handle; TYPE_1__ link; } ;
struct ata_device {int acpi_handle; } ;
typedef int acpi_handle ;





 int ata_acpi_detach_device (struct ata_port*,struct ata_device*) ;
 int ata_ehi_hotplugged (struct ata_eh_info*) ;
 int ata_ehi_push_desc (struct ata_eh_info*,char*) ;
 int ata_port_freeze (struct ata_port*) ;
 int ata_port_wait_eh (struct ata_port*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void ata_acpi_handle_hotplug(struct ata_port *ap, struct ata_device *dev,
        u32 event)
{
 struct ata_eh_info *ehi = &ap->link.eh_info;
 int wait = 0;
 unsigned long flags;
 acpi_handle handle;

 if (dev)
  handle = dev->acpi_handle;
 else
  handle = ap->acpi_handle;

 spin_lock_irqsave(ap->lock, flags);





 switch (event) {
 case 130:
 case 129:
  ata_ehi_push_desc(ehi, "ACPI event");

  ata_ehi_hotplugged(ehi);
  ata_port_freeze(ap);
  break;
 case 128:
  ata_ehi_push_desc(ehi, "ACPI event");

  ata_acpi_detach_device(ap, dev);
  wait = 1;
  break;
 }

 spin_unlock_irqrestore(ap->lock, flags);

 if (wait)
  ata_port_wait_eh(ap);
}
