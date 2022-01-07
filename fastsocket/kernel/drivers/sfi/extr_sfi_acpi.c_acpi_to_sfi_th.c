
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfi_table_header {int dummy; } ;
struct acpi_table_header {int dummy; } ;



__attribute__((used)) static inline struct sfi_table_header *acpi_to_sfi_th(
    struct acpi_table_header *th)
{
 return (struct sfi_table_header *)th;
}
