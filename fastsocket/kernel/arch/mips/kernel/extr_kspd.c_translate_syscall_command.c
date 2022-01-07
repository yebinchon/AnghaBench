
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sp; int ap; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* syscall_command_table ;

__attribute__((used)) static int translate_syscall_command(int cmd)
{
 int i;
 int ret = -1;

 for (i = 0; i < ARRAY_SIZE(syscall_command_table); i++) {
  if ((cmd == syscall_command_table[i].sp))
   return syscall_command_table[i].ap;
 }

 return ret;
}
