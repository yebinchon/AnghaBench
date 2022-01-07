
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_res_list {int resource_type; int name; scalar_t__ end; scalar_t__ start; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;
typedef scalar_t__ acpi_physical_address ;
 int AE_OK ;
 scalar_t__ ENFORCE_RESOURCES_NO ;
 int GFP_KERNEL ;
 scalar_t__ acpi_enforce_resources ;
 int acpi_res_list_add (struct acpi_res_list*) ;
 int acpi_res_lock ;
 int kfree (struct acpi_res_list*) ;
 struct acpi_res_list* kzalloc (int,int ) ;
 int pr_debug (char*,char*,char*,unsigned long long,unsigned long long,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlcpy (int ,char*,int) ;

acpi_status
acpi_os_validate_address (
    u8 space_id,
    acpi_physical_address address,
    acpi_size length,
    char *name)
{
 struct acpi_res_list *res;
 int added;
 if (acpi_enforce_resources == ENFORCE_RESOURCES_NO)
  return AE_OK;

 switch (space_id) {
 case 129:
 case 128:


  res = kzalloc(sizeof(struct acpi_res_list), GFP_KERNEL);
  if (!res)
   return AE_OK;

  strlcpy(res->name, name, 5);
  res->start = address;
  res->end = address + length - 1;
  res->resource_type = space_id;
  spin_lock(&acpi_res_lock);
  added = acpi_res_list_add(res);
  spin_unlock(&acpi_res_lock);
  pr_debug("%s %s resource: start: 0x%llx, end: 0x%llx, "
    "name: %s\n", added ? "Added" : "Already exist",
    (space_id == 129)
    ? "SystemIO" : "System Memory",
    (unsigned long long)res->start,
    (unsigned long long)res->end,
    res->name);
  if (!added)
   kfree(res);
  break;
 case 131:
 case 134:
 case 130:
 case 136:
 case 132:
 case 135:
 case 133:
  break;
 }
 return AE_OK;
}
