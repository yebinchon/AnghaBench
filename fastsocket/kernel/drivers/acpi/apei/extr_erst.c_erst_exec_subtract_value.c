
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct apei_exec_context {scalar_t__ value; } ;
struct acpi_whea_header {int dummy; } ;


 int __apei_exec_read_register (struct acpi_whea_header*,int *) ;
 int __apei_exec_write_register (struct acpi_whea_header*,int ) ;

__attribute__((used)) static int erst_exec_subtract_value(struct apei_exec_context *ctx,
        struct acpi_whea_header *entry)
{
 int rc;
 u64 val;

 rc = __apei_exec_read_register(entry, &val);
 if (rc)
  return rc;
 val -= ctx->value;
 rc = __apei_exec_write_register(entry, val);
 return rc;
}
