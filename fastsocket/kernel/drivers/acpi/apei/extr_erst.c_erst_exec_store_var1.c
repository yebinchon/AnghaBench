
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_exec_context {int var1; } ;
struct acpi_whea_header {int dummy; } ;


 int __apei_exec_write_register (struct acpi_whea_header*,int ) ;

__attribute__((used)) static int erst_exec_store_var1(struct apei_exec_context *ctx,
    struct acpi_whea_header *entry)
{
 return __apei_exec_write_register(entry, ctx->var1);
}
