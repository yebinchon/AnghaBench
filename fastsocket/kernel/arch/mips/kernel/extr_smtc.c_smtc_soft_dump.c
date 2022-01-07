
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int selfipis; int timerints; } ;


 int NR_CPUS ;
 int atomic_read (int *) ;
 int printk (char*,...) ;
 TYPE_1__* smtc_cpu_stats ;
 int smtc_fpu_recoveries ;
 int smtc_ipi_qdump () ;

void smtc_soft_dump(void)
{
 int i;

 printk("Counter Interrupts taken per CPU (TC)\n");
 for (i=0; i < NR_CPUS; i++) {
  printk("%d: %ld\n", i, smtc_cpu_stats[i].timerints);
 }
 printk("Self-IPI invocations:\n");
 for (i=0; i < NR_CPUS; i++) {
  printk("%d: %ld\n", i, smtc_cpu_stats[i].selfipis);
 }
 smtc_ipi_qdump();
 printk("%d Recoveries of \"stolen\" FPU\n",
        atomic_read(&smtc_fpu_recoveries));
}
