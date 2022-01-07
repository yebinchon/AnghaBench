
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __machine_emergency_restart (int ) ;
 int machine_shutdown () ;
 int printk (char*) ;
 int reboot_force ;

__attribute__((used)) static void native_machine_restart(char *__unused)
{
 printk("machine restart\n");

 if (!reboot_force)
  machine_shutdown();
 __machine_emergency_restart(0);
}
