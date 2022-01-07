
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {scalar_t__ dhandle; } ;


 scalar_t__ DEVICE_ACPI_HANDLE (int *) ;
 int VGA_SWITCHEROO_DIS ;
 int VGA_SWITCHEROO_IGD ;
 TYPE_1__ radeon_atpx_priv ;

__attribute__((used)) static int radeon_atpx_get_client_id(struct pci_dev *pdev)
{
 if (radeon_atpx_priv.dhandle == DEVICE_ACPI_HANDLE(&pdev->dev))
  return VGA_SWITCHEROO_IGD;
 else
  return VGA_SWITCHEROO_DIS;
}
