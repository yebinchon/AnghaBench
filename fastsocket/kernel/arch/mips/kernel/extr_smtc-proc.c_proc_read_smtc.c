
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_2__ {int selfipis; int timerints; } ;


 int NR_CPUS ;
 int atomic_read (int *) ;
 int read_c0_config7 () ;
 TYPE_1__* smtc_cpu_stats ;
 int smtc_fpu_recoveries ;
 int smtc_status ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int proc_read_smtc(char *page, char **start, off_t off,
                          int count, int *eof, void *data)
{
 int totalen = 0;
 int len;
 int i;
 extern unsigned long ebase;

 len = sprintf(page, "SMTC Status Word: 0x%08x\n", smtc_status);
 totalen += len;
 page += len;
 len = sprintf(page, "Config7: 0x%08x\n", read_c0_config7());
 totalen += len;
 page += len;
 len = sprintf(page, "EBASE: 0x%08lx\n", ebase);
 totalen += len;
 page += len;
 len = sprintf(page, "Counter Interrupts taken per CPU (TC)\n");
 totalen += len;
 page += len;
 for (i=0; i < NR_CPUS; i++) {
  len = sprintf(page, "%d: %ld\n", i, smtc_cpu_stats[i].timerints);
  totalen += len;
  page += len;
 }
 len = sprintf(page, "Self-IPIs by CPU:\n");
 totalen += len;
 page += len;
 for(i = 0; i < NR_CPUS; i++) {
  len = sprintf(page, "%d: %ld\n", i, smtc_cpu_stats[i].selfipis);
  totalen += len;
  page += len;
 }
 len = sprintf(page, "%d Recoveries of \"stolen\" FPU\n",
               atomic_read(&smtc_fpu_recoveries));
 totalen += len;
 page += len;

 return totalen;
}
