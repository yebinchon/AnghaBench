
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcc_acpi {int sticky_mode; } ;
struct acpi_device {int dummy; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_DB_ERROR ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ AE_OK ;
 int EINVAL ;
 int SINF_STICKY_KEY ;
 struct pcc_acpi* acpi_driver_data (struct acpi_device*) ;
 scalar_t__ acpi_pcc_write_sset (struct pcc_acpi*,int ,int ) ;

__attribute__((used)) static int acpi_pcc_hotkey_resume(struct acpi_device *device)
{
 struct pcc_acpi *pcc = acpi_driver_data(device);
 acpi_status status = AE_OK;

 if (device == ((void*)0) || pcc == ((void*)0))
  return -EINVAL;

 ACPI_DEBUG_PRINT((ACPI_DB_ERROR, "Sticky mode restore: %d\n",
     pcc->sticky_mode));

 status = acpi_pcc_write_sset(pcc, SINF_STICKY_KEY, pcc->sticky_mode);

 return status == AE_OK ? 0 : -EINVAL;
}
