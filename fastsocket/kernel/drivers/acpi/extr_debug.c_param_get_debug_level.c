
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kernel_param {int dummy; } ;
struct TYPE_3__ {char* name; int value; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int acpi_dbg_level ;
 TYPE_1__* acpi_debug_levels ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int param_get_debug_level(char *buffer, struct kernel_param *kp) {
 int result = 0;
 int i;

 result = sprintf(buffer, "%-25s\tHex        SET\n", "Description");

 for (i = 0; i < ARRAY_SIZE(acpi_debug_levels); i++) {
  result += sprintf(buffer+result, "%-25s\t0x%08lX [%c]\n",
         acpi_debug_levels[i].name,
         acpi_debug_levels[i].value,
         (acpi_dbg_level & acpi_debug_levels[i].
          value) ? '*' : ' ');
 }
 result += sprintf(buffer+result, "--\ndebug_level = 0x%08X (* = enabled)\n",
        acpi_dbg_level);

 return result;
}
