
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct apei_exec_context {int dummy; } ;


 int ACPI_EINJ_GET_ERROR_TYPE ;
 int apei_exec_ctx_get_output (struct apei_exec_context*) ;
 int apei_exec_run (struct apei_exec_context*,int ) ;
 int einj_exec_ctx_init (struct apei_exec_context*) ;

__attribute__((used)) static int __einj_get_available_error_type(u32 *type)
{
 struct apei_exec_context ctx;
 int rc;

 einj_exec_ctx_init(&ctx);
 rc = apei_exec_run(&ctx, ACPI_EINJ_GET_ERROR_TYPE);
 if (rc)
  return rc;
 *type = apei_exec_ctx_get_output(&ctx);

 return 0;
}
