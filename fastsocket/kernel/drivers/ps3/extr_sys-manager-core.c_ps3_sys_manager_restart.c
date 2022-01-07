
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int (* restart ) (int ) ;} ;


 int ps3_sys_manager_halt () ;
 TYPE_1__ ps3_sys_manager_ops ;
 int stub1 (int ) ;

void ps3_sys_manager_restart(void)
{
 if (ps3_sys_manager_ops.restart)
  ps3_sys_manager_ops.restart(ps3_sys_manager_ops.dev);

 ps3_sys_manager_halt();
}
