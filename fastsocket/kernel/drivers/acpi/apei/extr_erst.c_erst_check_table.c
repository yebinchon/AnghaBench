
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct acpi_table_erst {int header_length; int entries; TYPE_1__ header; } ;
struct acpi_erst_entry {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int erst_check_table(struct acpi_table_erst *erst_tab)
{
 if ((erst_tab->header_length !=
      (sizeof(struct acpi_table_erst) - sizeof(erst_tab->header)))
     && (erst_tab->header_length != sizeof(struct acpi_table_erst)))
  return -EINVAL;
 if (erst_tab->header.length < sizeof(struct acpi_table_erst))
  return -EINVAL;
 if (erst_tab->entries !=
     (erst_tab->header.length - sizeof(struct acpi_table_erst)) /
     sizeof(struct acpi_erst_entry))
  return -EINVAL;

 return 0;
}
