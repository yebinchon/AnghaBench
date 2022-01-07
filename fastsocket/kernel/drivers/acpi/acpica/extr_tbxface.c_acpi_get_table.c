
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_size ;


 int acpi_get_table_with_size (char*,int ,struct acpi_table_header**,int *) ;

acpi_status
acpi_get_table(char *signature,
        u32 instance, struct acpi_table_header **out_table)
{
 acpi_size tbl_size;

 return acpi_get_table_with_size(signature,
         instance, out_table, &tbl_size);
}
