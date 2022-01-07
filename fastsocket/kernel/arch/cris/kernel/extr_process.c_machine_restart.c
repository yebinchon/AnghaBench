
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hard_reset_now () ;

void machine_restart(char *cmd)
{
 hard_reset_now();
}
