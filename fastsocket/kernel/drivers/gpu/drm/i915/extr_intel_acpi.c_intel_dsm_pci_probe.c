
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
 int DRM_DEBUG_KMS (char*) ;
 int INTEL_DSM_FN_SUPPORTED_FUNCTIONS ;
 int acpi_get_handle (scalar_t__,char*,scalar_t__*) ;
 int intel_dsm (scalar_t__,int ,int ) ;
 int intel_dsm_platform_mux_info () ;
 TYPE_1__ intel_dsm_priv ;

__attribute__((used)) static bool intel_dsm_pci_probe(struct pci_dev *pdev)
{
 acpi_handle dhandle, intel_handle;
 acpi_status status;
 int ret;

 dhandle = DEVICE_ACPI_HANDLE(&pdev->dev);
 if (!dhandle)
  return 0;

 status = acpi_get_handle(dhandle, "_DSM", &intel_handle);
 if (ACPI_FAILURE(status)) {
  DRM_DEBUG_KMS("no _DSM method for intel device\n");
  return 0;
 }

 ret = intel_dsm(dhandle, INTEL_DSM_FN_SUPPORTED_FUNCTIONS, 0);
 if (ret < 0) {
  DRM_DEBUG_KMS("failed to get supported _DSM functions\n");
  return 0;
 }

 intel_dsm_priv.dhandle = dhandle;

 intel_dsm_platform_mux_info();
 return 1;
}
