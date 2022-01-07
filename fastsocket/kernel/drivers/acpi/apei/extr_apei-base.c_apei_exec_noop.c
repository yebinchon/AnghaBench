
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_exec_context {int dummy; } ;
struct acpi_whea_header {int dummy; } ;



int apei_exec_noop(struct apei_exec_context *ctx,
     struct acpi_whea_header *entry)
{
 return 0;
}
