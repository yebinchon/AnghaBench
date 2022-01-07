
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {struct binder_proc* private_data; } ;
struct binder_thread {scalar_t__ return_error; int wait; int todo; int * transaction_stack; } ;
struct binder_proc {int wait; } ;


 scalar_t__ BR_OK ;
 unsigned int POLLIN ;
 struct binder_thread* binder_get_thread (struct binder_proc*) ;
 scalar_t__ binder_has_proc_work (struct binder_proc*,struct binder_thread*) ;
 scalar_t__ binder_has_thread_work (struct binder_thread*) ;
 int binder_lock ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int binder_poll(struct file *filp,
    struct poll_table_struct *wait)
{
 struct binder_proc *proc = filp->private_data;
 struct binder_thread *thread = ((void*)0);
 int wait_for_proc_work;

 mutex_lock(&binder_lock);
 thread = binder_get_thread(proc);

 wait_for_proc_work = thread->transaction_stack == ((void*)0) &&
  list_empty(&thread->todo) && thread->return_error == BR_OK;
 mutex_unlock(&binder_lock);

 if (wait_for_proc_work) {
  if (binder_has_proc_work(proc, thread))
   return POLLIN;
  poll_wait(filp, &proc->wait, wait);
  if (binder_has_proc_work(proc, thread))
   return POLLIN;
 } else {
  if (binder_has_thread_work(thread))
   return POLLIN;
  poll_wait(filp, &thread->wait, wait);
  if (binder_has_thread_work(thread))
   return POLLIN;
 }
 return 0;
}
