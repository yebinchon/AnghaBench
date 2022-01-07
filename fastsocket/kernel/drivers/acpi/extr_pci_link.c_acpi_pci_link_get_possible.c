
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int possible_count; } ;
struct acpi_pci_link {TYPE_2__ irq; TYPE_1__* device; } ;
typedef int acpi_status ;
struct TYPE_3__ {int handle; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_INFO ;
 int ENODEV ;
 int METHOD_NAME__PRS ;
 int acpi_pci_link_check_possible ;
 int acpi_walk_resources (int ,int ,int ,struct acpi_pci_link*) ;

__attribute__((used)) static int acpi_pci_link_get_possible(struct acpi_pci_link *link)
{
 acpi_status status;

 status = acpi_walk_resources(link->device->handle, METHOD_NAME__PRS,
         acpi_pci_link_check_possible, link);
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "Evaluating _PRS"));
  return -ENODEV;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "Found %d possible IRQs\n",
     link->irq.possible_count));

 return 0;
}
