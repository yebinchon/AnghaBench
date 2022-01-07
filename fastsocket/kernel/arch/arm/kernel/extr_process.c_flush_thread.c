
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union fp_state {int dummy; } fp_state ;
struct thread_info {int fpstate; int * used_cp; } ;
struct TYPE_2__ {int debug; } ;
struct task_struct {TYPE_1__ thread; } ;
struct debug_info {int dummy; } ;


 int THREAD_NOTIFY_FLUSH ;
 struct task_struct* current ;
 struct thread_info* current_thread_info () ;
 int memset (int *,int ,int) ;
 int thread_notify (int ,struct thread_info*) ;

void flush_thread(void)
{
 struct thread_info *thread = current_thread_info();
 struct task_struct *tsk = current;

 memset(thread->used_cp, 0, sizeof(thread->used_cp));
 memset(&tsk->thread.debug, 0, sizeof(struct debug_info));
 memset(&thread->fpstate, 0, sizeof(union fp_state));

 thread_notify(THREAD_NOTIFY_FLUSH, thread);
}
