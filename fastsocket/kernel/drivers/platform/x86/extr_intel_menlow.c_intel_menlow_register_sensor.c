
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thermal_zone_device {int device; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ AE_ERROR ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AE_OK ;
 int GET_AUX0 ;
 int GET_AUX1 ;
 int SET_AUX0 ;
 int SET_AUX1 ;
 int acpi_bus_get_private_data (int ,void**) ;
 scalar_t__ acpi_get_handle (int ,int ,int *) ;
 int aux0_show ;
 int * aux0_store ;
 int aux1_show ;
 int * aux1_store ;
 int bios_enabled_show ;
 int intel_menlow_add_one_attribute (char*,int,int ,int *,int *,int ) ;

__attribute__((used)) static acpi_status intel_menlow_register_sensor(acpi_handle handle, u32 lvl,
      void *context, void **rv)
{
 acpi_status status;
 acpi_handle dummy;
 struct thermal_zone_device *thermal;
 int result;

 result = acpi_bus_get_private_data(handle, (void **)&thermal);
 if (result)
  return 0;


 status = acpi_get_handle(handle, GET_AUX0, &dummy);
 if (ACPI_FAILURE(status))
  goto not_found;

 status = acpi_get_handle(handle, SET_AUX0, &dummy);
 if (ACPI_FAILURE(status))
  goto not_found;

 result = intel_menlow_add_one_attribute("aux0", 0644,
      aux0_show, aux0_store,
      &thermal->device, handle);
 if (result)
  return AE_ERROR;

 status = acpi_get_handle(handle, GET_AUX1, &dummy);
 if (ACPI_FAILURE(status))
  goto not_found;

 status = acpi_get_handle(handle, SET_AUX1, &dummy);
 if (ACPI_FAILURE(status))
  goto not_found;

 result = intel_menlow_add_one_attribute("aux1", 0644,
      aux1_show, aux1_store,
      &thermal->device, handle);
 if (result)
  return AE_ERROR;






 result = intel_menlow_add_one_attribute("bios_enabled", 0444,
      bios_enabled_show, ((void*)0),
      &thermal->device, handle);
 if (result)
  return AE_ERROR;

 not_found:
 if (status == AE_NOT_FOUND)
  return AE_OK;
 else
  return status;
}
