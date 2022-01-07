
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_REBOOT_CMD_POWER_OFF ;
 int common_shutdown (int ,int *) ;

void
machine_power_off(void)
{
 common_shutdown(LINUX_REBOOT_CMD_POWER_OFF, ((void*)0));
}
