
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;
 int prom_reboot (char*) ;
 char* reboot_command ;
 char* strchr (char*,char) ;

void machine_restart(char *cmd)
{
 char *p;

 p = strchr(reboot_command, '\n');
 if (p)
  *p = 0;
 if (cmd)
  prom_reboot(cmd);
 if (*reboot_command)
  prom_reboot(reboot_command);
 prom_reboot("");
 panic("Reboot failed!");
}
