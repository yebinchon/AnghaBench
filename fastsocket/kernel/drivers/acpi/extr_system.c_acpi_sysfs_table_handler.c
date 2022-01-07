
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_attr {int node; int attr; } ;
typedef int acpi_status ;




 int AE_BAD_PARAMETER ;
 int AE_ERROR ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int GFP_KERNEL ;
 int acpi_table_attr_init (struct acpi_table_attr*,void*) ;
 int acpi_table_attr_list ;
 int dynamic_tables_kobj ;
 int kfree (struct acpi_table_attr*) ;
 struct acpi_table_attr* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sysfs_create_bin_file (int ,int *) ;

__attribute__((used)) static acpi_status
acpi_sysfs_table_handler(u32 event, void *table, void *context)
{
 struct acpi_table_attr *table_attr;

 switch (event) {
 case 129:
  table_attr =
   kzalloc(sizeof(struct acpi_table_attr), GFP_KERNEL);
  if (!table_attr)
   return AE_NO_MEMORY;

  acpi_table_attr_init(table_attr, table);
  if (sysfs_create_bin_file(dynamic_tables_kobj,
     &table_attr->attr)) {
   kfree(table_attr);
   return AE_ERROR;
  } else
   list_add_tail(&table_attr->node,
     &acpi_table_attr_list);
  break;
 case 128:





  break;
 default:
  return AE_BAD_PARAMETER;
 }
 return AE_OK;
}
