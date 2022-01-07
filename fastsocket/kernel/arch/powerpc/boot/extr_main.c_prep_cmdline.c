
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* edit_cmdline ) (char*,scalar_t__) ;} ;


 scalar_t__ COMMAND_LINE_SIZE ;
 char* cmdline ;
 TYPE_1__ console_ops ;
 int getprop (void*,char*,char*,scalar_t__) ;
 int printf (char*,...) ;
 int setprop_str (void*,char*,char*) ;
 int stub1 (char*,scalar_t__) ;

__attribute__((used)) static void prep_cmdline(void *chosen)
{
 if (cmdline[0] == '\0')
  getprop(chosen, "bootargs", cmdline, COMMAND_LINE_SIZE-1);

 printf("\n\rLinux/PowerPC load: %s", cmdline);

 if (console_ops.edit_cmdline)
  console_ops.edit_cmdline(cmdline, COMMAND_LINE_SIZE);
 printf("\n\r");


 setprop_str(chosen, "bootargs", cmdline);
}
