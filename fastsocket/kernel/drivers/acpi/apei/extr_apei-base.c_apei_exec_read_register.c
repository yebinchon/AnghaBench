
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct apei_exec_context {int value; } ;
struct acpi_whea_header {int dummy; } ;


 int __apei_exec_read_register (struct acpi_whea_header*,int *) ;

int apei_exec_read_register(struct apei_exec_context *ctx,
       struct acpi_whea_header *entry)
{
 int rc;
 u64 val = 0;

 rc = __apei_exec_read_register(entry, &val);
 if (rc)
  return rc;
 ctx->value = val;

 return 0;
}
