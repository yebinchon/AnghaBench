
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int dummy; } ;
struct acpi_table_attr {int node; int attr; } ;


 int AE_OK ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int acpi_get_table_by_index (int,struct acpi_table_header**) ;
 int acpi_install_table_handler (int ,int *) ;
 int acpi_kobj ;
 int acpi_sysfs_table_handler ;
 int acpi_table_attr_init (struct acpi_table_attr*,struct acpi_table_header*) ;
 int acpi_table_attr_list ;
 int dynamic_tables_kobj ;
 int kfree (struct acpi_table_attr*) ;
 int kobject_create_and_add (char*,int ) ;
 int kobject_put (int ) ;
 int kobject_uevent (int ,int ) ;
 struct acpi_table_attr* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sysfs_create_bin_file (int ,int *) ;
 int tables_kobj ;

__attribute__((used)) static int acpi_system_sysfs_init(void)
{
 struct acpi_table_attr *table_attr;
 struct acpi_table_header *table_header = ((void*)0);
 int table_index = 0;
 int result;

 tables_kobj = kobject_create_and_add("tables", acpi_kobj);
 if (!tables_kobj)
  goto err;

 dynamic_tables_kobj = kobject_create_and_add("dynamic", tables_kobj);
 if (!dynamic_tables_kobj)
  goto err_dynamic_tables;

 do {
  result = acpi_get_table_by_index(table_index, &table_header);
  if (!result) {
   table_index++;
   table_attr = ((void*)0);
   table_attr =
       kzalloc(sizeof(struct acpi_table_attr), GFP_KERNEL);
   if (!table_attr)
    return -ENOMEM;

   acpi_table_attr_init(table_attr, table_header);
   result =
       sysfs_create_bin_file(tables_kobj,
        &table_attr->attr);
   if (result) {
    kfree(table_attr);
    return result;
   } else
    list_add_tail(&table_attr->node,
           &acpi_table_attr_list);
  }
 } while (!result);
 kobject_uevent(tables_kobj, KOBJ_ADD);
 kobject_uevent(dynamic_tables_kobj, KOBJ_ADD);
 result = acpi_install_table_handler(acpi_sysfs_table_handler, ((void*)0));

 return result == AE_OK ? 0 : -EINVAL;
err_dynamic_tables:
 kobject_put(tables_kobj);
err:
 return -ENOMEM;
}
