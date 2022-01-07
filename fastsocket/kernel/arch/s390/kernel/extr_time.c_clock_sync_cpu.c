
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_sync_data {int in_sync; int fixup_cc; int cpus; } ;


 int __udelay (int) ;
 int atomic_dec (int *) ;
 int barrier () ;
 int disable_sync_clock (int *) ;
 int enable_sync_clock () ;
 int fixup_clock_comparator (int ) ;

__attribute__((used)) static void clock_sync_cpu(struct clock_sync_data *sync)
{
 atomic_dec(&sync->cpus);
 enable_sync_clock();






 while (sync->in_sync == 0) {
  __udelay(1);




  barrier();
 }
 if (sync->in_sync != 1)

  disable_sync_clock(((void*)0));




 fixup_clock_comparator(sync->fixup_cc);
}
