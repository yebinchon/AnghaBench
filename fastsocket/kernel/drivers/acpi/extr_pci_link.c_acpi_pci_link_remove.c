
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_pci_link {int list; } ;
struct acpi_device {int dummy; } ;


 struct acpi_pci_link* acpi_driver_data (struct acpi_device*) ;
 int acpi_link_lock ;
 int kfree (struct acpi_pci_link*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int acpi_pci_link_remove(struct acpi_device *device, int type)
{
 struct acpi_pci_link *link;

 link = acpi_driver_data(device);

 mutex_lock(&acpi_link_lock);
 list_del(&link->list);
 mutex_unlock(&acpi_link_lock);

 kfree(link);
 return 0;
}
