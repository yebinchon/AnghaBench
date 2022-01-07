
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int* utraps; scalar_t__ pcr_reg; int * user_cntd1; int user_cntd0; } ;


 int TIF_PERFCTR ;
 struct thread_info* current_thread_info () ;
 int kfree (int*) ;
 scalar_t__ test_and_clear_thread_flag (int ) ;
 int write_pcr (int ) ;

void exit_thread(void)
{
 struct thread_info *t = current_thread_info();

 if (t->utraps) {
  if (t->utraps[0] < 2)
   kfree (t->utraps);
  else
   t->utraps[0]--;
 }

 if (test_and_clear_thread_flag(TIF_PERFCTR)) {
  t->user_cntd0 = t->user_cntd1 = ((void*)0);
  t->pcr_reg = 0;
  write_pcr(0);
 }
}
