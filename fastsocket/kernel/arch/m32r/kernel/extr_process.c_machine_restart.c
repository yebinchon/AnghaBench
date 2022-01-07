
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PLD_REBOOT ;
 int cpu_relax () ;
 int outw (int,unsigned long) ;
 int printk (char*) ;

void machine_restart(char *__unused)
{




 printk("Please push reset button!\n");
 while (1)
  cpu_relax();
}
