
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ selfipis; scalar_t__ timerints; } ;


 int NR_CPUS ;
 int atomic_set (int *,int ) ;
 int create_proc_read_entry (char*,int,int *,int ,int *) ;
 int proc_read_smtc ;
 TYPE_1__* smtc_cpu_stats ;
 int smtc_fpu_recoveries ;
 int smtc_stats ;

void init_smtc_stats(void)
{
 int i;

 for (i=0; i<NR_CPUS; i++) {
  smtc_cpu_stats[i].timerints = 0;
  smtc_cpu_stats[i].selfipis = 0;
 }

 atomic_set(&smtc_fpu_recoveries, 0);

 smtc_stats = create_proc_read_entry("smtc", 0444, ((void*)0),
                                     proc_read_smtc, ((void*)0));
}
