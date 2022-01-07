
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int acpi_debug_trace (char*,int ,int ,int) ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int) ;
 int trace_debug_layer ;
 int trace_debug_level ;
 char* trace_method_name ;

__attribute__((used)) static int param_set_trace_state(const char *val, struct kernel_param *kp)
{
 int result = 0;

 if (!strncmp(val, "enable", strlen("enable") - 1)) {
  result = acpi_debug_trace(trace_method_name, trace_debug_level,
       trace_debug_layer, 0);
  if (result)
   result = -EBUSY;
  goto exit;
 }

 if (!strncmp(val, "disable", strlen("disable") - 1)) {
  int name = 0;
  result = acpi_debug_trace((char *)&name, trace_debug_level,
       trace_debug_layer, 0);
  if (result)
   result = -EBUSY;
  goto exit;
 }

 if (!strncmp(val, "1", 1)) {
  result = acpi_debug_trace(trace_method_name, trace_debug_level,
       trace_debug_layer, 1);
  if (result)
   result = -EBUSY;
  goto exit;
 }

 result = -EINVAL;
exit:
 return result;
}
