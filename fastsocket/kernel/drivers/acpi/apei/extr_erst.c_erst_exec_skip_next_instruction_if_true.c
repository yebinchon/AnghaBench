
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct apei_exec_context {scalar_t__ value; int ip; } ;
struct acpi_whea_header {int dummy; } ;


 int APEI_EXEC_SET_IP ;
 int __apei_exec_read_register (struct acpi_whea_header*,scalar_t__*) ;

__attribute__((used)) static int erst_exec_skip_next_instruction_if_true(
 struct apei_exec_context *ctx,
 struct acpi_whea_header *entry)
{
 int rc;
 u64 val;

 rc = __apei_exec_read_register(entry, &val);
 if (rc)
  return rc;
 if (val == ctx->value) {
  ctx->ip += 2;
  return APEI_EXEC_SET_IP;
 }

 return 0;
}
