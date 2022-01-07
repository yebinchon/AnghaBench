
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdbstub_exit (int ) ;
 int mn10300_proc_hard_reset () ;
 int mn10300_unit_hard_reset () ;

void machine_restart(char *cmd)
{







 mn10300_proc_hard_reset();

}
