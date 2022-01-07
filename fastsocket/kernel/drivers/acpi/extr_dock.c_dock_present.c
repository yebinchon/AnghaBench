
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int dock_present(struct dock_station *ds)
{
 unsigned long long sta;
 acpi_status status;

 if (ds) {
  status = acpi_evaluate_integer(ds->handle, "_STA", ((void*)0), &sta);
  if (ACPI_SUCCESS(status) && sta)
   return 1;
 }
 return 0;
}
