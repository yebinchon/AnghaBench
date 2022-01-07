
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reboot_skas () ;
 int uml_cleanup () ;

void machine_restart(char * __unused)
{
 uml_cleanup();
 reboot_skas();
}
