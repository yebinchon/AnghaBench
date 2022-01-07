
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int beat_pm_poweroff_flag ;
 int beat_shutdown_logical_partition (int) ;

void beat_restart(char *cmd)
{
 beat_shutdown_logical_partition(!beat_pm_poweroff_flag);
}
