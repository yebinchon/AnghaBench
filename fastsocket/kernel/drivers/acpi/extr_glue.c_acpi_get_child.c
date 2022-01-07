
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_integer ;
typedef int * acpi_handle ;


 int ACPI_TYPE_DEVICE ;
 int acpi_walk_namespace (int ,int *,int,int ,int *,void**) ;
 int do_acpi_find_child ;

acpi_handle acpi_get_child(acpi_handle parent, acpi_integer address)
{
 void *ret = ((void*)0);

 if (!parent)
  return ((void*)0);

 acpi_walk_namespace(ACPI_TYPE_DEVICE, parent, 1,
       do_acpi_find_child, &address, &ret);
 return (acpi_handle)ret;
}
