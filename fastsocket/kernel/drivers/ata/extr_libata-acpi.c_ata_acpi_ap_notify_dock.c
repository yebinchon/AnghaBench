
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_port {int dummy; } ;
typedef int acpi_handle ;


 int ata_acpi_handle_hotplug (struct ata_port*,int *,int ) ;

__attribute__((used)) static void ata_acpi_ap_notify_dock(acpi_handle handle, u32 event, void *data)
{
 struct ata_port *ap = data;

 ata_acpi_handle_hotplug(ap, ((void*)0), event);
}
