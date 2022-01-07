
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PNX833X_RESET_CONTROL ;
 scalar_t__ PNX833X_RESET_CONTROL_2 ;

void pnx833x_machine_restart(char *command)
{
 PNX833X_RESET_CONTROL_2 = 0;
 PNX833X_RESET_CONTROL = 0;
}
