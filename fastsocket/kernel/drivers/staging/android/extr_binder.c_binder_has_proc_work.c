
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_thread {int looper; } ;
struct binder_proc {int todo; } ;


 int BINDER_LOOPER_STATE_NEED_RETURN ;
 int list_empty (int *) ;

__attribute__((used)) static int binder_has_proc_work(struct binder_proc *proc,
    struct binder_thread *thread)
{
 return !list_empty(&proc->todo) ||
  (thread->looper & BINDER_LOOPER_STATE_NEED_RETURN);
}
