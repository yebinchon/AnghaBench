
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int acpi_gbl_trace_flags ;
 int acpi_gbl_trace_method_name ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int param_get_trace_state(char *buffer, struct kernel_param *kp)
{
 if (!acpi_gbl_trace_method_name)
  return sprintf(buffer, "disable");
 else {
  if (acpi_gbl_trace_flags & 1)
   return sprintf(buffer, "1");
  else
   return sprintf(buffer, "enable");
 }
 return 0;
}
