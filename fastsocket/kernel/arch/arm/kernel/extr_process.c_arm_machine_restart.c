
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_reset (char,char const*) ;
 int cpu_proc_fin () ;
 int mdelay (int) ;
 int printk (char*) ;
 int setup_mm_for_reboot (char) ;

void arm_machine_restart(char mode, const char *cmd)
{



 cpu_proc_fin();






 setup_mm_for_reboot(mode);




 arch_reset(mode, cmd);





 mdelay(1000);
 printk("Reboot failed -- System halted\n");
 while (1);
}
