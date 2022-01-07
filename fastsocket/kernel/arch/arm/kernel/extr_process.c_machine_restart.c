
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arm_pm_restart (int ,char*) ;
 int reboot_mode ;

void machine_restart(char *cmd)
{
 arm_pm_restart(reboot_mode, cmd);
}
