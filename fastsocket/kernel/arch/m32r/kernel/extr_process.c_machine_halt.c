
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 int printk (char*) ;

void machine_halt(void)
{
 printk("Please push reset button!\n");
 while (1)
  cpu_relax();
}
