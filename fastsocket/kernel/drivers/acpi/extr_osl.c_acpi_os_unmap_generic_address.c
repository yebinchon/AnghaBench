
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct acpi_ioremap {int dummy; } ;
struct acpi_generic_address {scalar_t__ space_id; int bit_width; int address; } ;
typedef int addr ;


 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ;
 int acpi_ioremap_lock ;
 struct acpi_ioremap* acpi_map_lookup (int ,int) ;
 int acpi_os_drop_map_ref (struct acpi_ioremap*) ;
 int acpi_os_map_cleanup (struct acpi_ioremap*) ;
 int memcpy (int *,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void acpi_os_unmap_generic_address(struct acpi_generic_address *gas)
{
 u64 addr;
 struct acpi_ioremap *map;

 if (gas->space_id != ACPI_ADR_SPACE_SYSTEM_MEMORY)
  return;


 memcpy(&addr, &gas->address, sizeof(addr));
 if (!addr || !gas->bit_width)
  return;

 mutex_lock(&acpi_ioremap_lock);
 map = acpi_map_lookup(addr, gas->bit_width / 8);
 if (!map) {
  mutex_unlock(&acpi_ioremap_lock);
  return;
 }
 acpi_os_drop_map_ref(map);
 mutex_unlock(&acpi_ioremap_lock);

 acpi_os_map_cleanup(map);
}
