
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_ERROR ;
 int AE_OK ;
 int METHOD_NAME__CRS ;
 int acpi_walk_resources (int ,int ,int ,struct resource*) ;
 int get_root_bridge_busnr_callback ;

__attribute__((used)) static acpi_status try_get_root_bridge_busnr(acpi_handle handle,
          struct resource *res)
{
 acpi_status status;

 res->start = -1;
 status =
     acpi_walk_resources(handle, METHOD_NAME__CRS,
    get_root_bridge_busnr_callback, res);
 if (ACPI_FAILURE(status))
  return status;
 if (res->start == -1)
  return AE_ERROR;
 return AE_OK;
}
