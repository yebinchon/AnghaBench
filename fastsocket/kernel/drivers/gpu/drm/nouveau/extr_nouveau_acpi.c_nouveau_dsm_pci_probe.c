
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;
struct TYPE_2__ {scalar_t__ dhandle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ DEVICE_ACPI_HANDLE (int *) ;
 int NOUVEAU_DSM_HAS_MUX ;
 int NOUVEAU_DSM_HAS_OPT ;
 int NOUVEAU_DSM_OPTIMUS_FN ;
 int NOUVEAU_DSM_POWER ;
 int acpi_get_handle (scalar_t__,char*,scalar_t__*) ;
 int nouveau_dsm ;
 TYPE_1__ nouveau_dsm_priv ;
 int nouveau_optimus_dsm ;
 scalar_t__ nouveau_test_dsm (scalar_t__,int ,int ) ;

__attribute__((used)) static int nouveau_dsm_pci_probe(struct pci_dev *pdev)
{
 acpi_handle dhandle, nvidia_handle;
 acpi_status status;
 int retval = 0;

 dhandle = DEVICE_ACPI_HANDLE(&pdev->dev);
 if (!dhandle)
  return 0;

 status = acpi_get_handle(dhandle, "_DSM", &nvidia_handle);
 if (ACPI_FAILURE(status)) {
  return 0;
 }

 if (nouveau_test_dsm(dhandle, nouveau_dsm, NOUVEAU_DSM_POWER))
  retval |= NOUVEAU_DSM_HAS_MUX;

 if (nouveau_test_dsm(dhandle, nouveau_optimus_dsm,
  NOUVEAU_DSM_OPTIMUS_FN))
  retval |= NOUVEAU_DSM_HAS_OPT;

 if (retval)
  nouveau_dsm_priv.dhandle = dhandle;

 return retval;
}
