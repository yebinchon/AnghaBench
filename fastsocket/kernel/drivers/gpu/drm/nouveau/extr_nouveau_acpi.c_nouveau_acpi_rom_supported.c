
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
typedef int acpi_status ;
typedef int acpi_handle ;
struct TYPE_2__ {int rom_handle; int optimus_detected; int dsm_detected; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int DEVICE_ACPI_HANDLE (int *) ;
 int acpi_get_handle (int ,char*,int *) ;
 TYPE_1__ nouveau_dsm_priv ;

bool nouveau_acpi_rom_supported(struct pci_dev *pdev)
{
 acpi_status status;
 acpi_handle dhandle, rom_handle;

 if (!nouveau_dsm_priv.dsm_detected && !nouveau_dsm_priv.optimus_detected)
  return 0;

 dhandle = DEVICE_ACPI_HANDLE(&pdev->dev);
 if (!dhandle)
  return 0;

 status = acpi_get_handle(dhandle, "_ROM", &rom_handle);
 if (ACPI_FAILURE(status))
  return 0;

 nouveau_dsm_priv.rom_handle = rom_handle;
 return 1;
}
