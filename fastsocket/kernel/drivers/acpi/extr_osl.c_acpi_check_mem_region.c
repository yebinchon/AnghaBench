
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {char const* name; int flags; int end; scalar_t__ start; } ;
typedef scalar_t__ resource_size_t ;


 int IORESOURCE_MEM ;
 int acpi_check_resource_conflict (struct resource*) ;

int acpi_check_mem_region(resource_size_t start, resource_size_t n,
        const char *name)
{
 struct resource res = {
  .start = start,
  .end = start + n - 1,
  .name = name,
  .flags = IORESOURCE_MEM,
 };

 return acpi_check_resource_conflict(&res);

}
