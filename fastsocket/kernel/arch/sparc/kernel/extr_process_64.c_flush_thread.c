
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {scalar_t__* fpsaved; scalar_t__ pcr_reg; int * user_cntd1; int user_cntd0; TYPE_1__* task; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 scalar_t__ ASI_AIUS ;
 int TIF_32BIT ;
 int TIF_ABI_PENDING ;
 int TIF_PERFCTR ;
 int USER_DS ;
 int clear_ti_thread_flag (struct thread_info*,int ) ;
 struct thread_info* current_thread_info () ;
 scalar_t__ get_thread_current_ds () ;
 int set_fs (int ) ;
 int set_thread_wsaved (int ) ;
 int set_ti_thread_flag (struct thread_info*,int ) ;
 scalar_t__ test_and_clear_thread_flag (int ) ;
 scalar_t__ test_ti_thread_flag (struct thread_info*,int ) ;
 int tsb_context_switch (struct mm_struct*) ;
 int write_pcr (int ) ;

void flush_thread(void)
{
 struct thread_info *t = current_thread_info();
 struct mm_struct *mm;

 if (test_ti_thread_flag(t, TIF_ABI_PENDING)) {
  clear_ti_thread_flag(t, TIF_ABI_PENDING);
  if (test_ti_thread_flag(t, TIF_32BIT))
   clear_ti_thread_flag(t, TIF_32BIT);
  else
   set_ti_thread_flag(t, TIF_32BIT);
 }

 mm = t->task->mm;
 if (mm)
  tsb_context_switch(mm);

 set_thread_wsaved(0);


 if (test_and_clear_thread_flag(TIF_PERFCTR)) {
  t->user_cntd0 = t->user_cntd1 = ((void*)0);
  t->pcr_reg = 0;
  write_pcr(0);
 }


 t->fpsaved[0] = 0;

 if (get_thread_current_ds() != ASI_AIUS)
  set_fs(USER_DS);
}
