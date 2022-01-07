
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct binder_transaction {struct binder_transaction* from_parent; struct binder_thread* from; struct binder_transaction* to_parent; TYPE_1__* buffer; struct binder_thread* to_thread; int * to_proc; int debug_id; } ;
struct binder_thread {int todo; int pid; struct binder_transaction* transaction_stack; int rb_node; } ;
struct binder_proc {int pid; int threads; } ;
struct TYPE_2__ {int * transaction; } ;


 int BINDER_DEBUG_DEAD_TRANSACTION ;
 int BINDER_STAT_THREAD ;
 int BR_DEAD_REPLY ;
 int BUG () ;
 int binder_debug (int ,char*,int ,int ,int ,char*) ;
 int binder_release_work (int *) ;
 int binder_send_failed_reply (struct binder_transaction*,int ) ;
 int binder_stats_deleted (int ) ;
 int kfree (struct binder_thread*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static int binder_free_thread(struct binder_proc *proc,
         struct binder_thread *thread)
{
 struct binder_transaction *t;
 struct binder_transaction *send_reply = ((void*)0);
 int active_transactions = 0;

 rb_erase(&thread->rb_node, &proc->threads);
 t = thread->transaction_stack;
 if (t && t->to_thread == thread)
  send_reply = t;
 while (t) {
  active_transactions++;
  binder_debug(BINDER_DEBUG_DEAD_TRANSACTION,
        "binder: release %d:%d transaction %d "
        "%s, still active\n", proc->pid, thread->pid,
        t->debug_id,
        (t->to_thread == thread) ? "in" : "out");

  if (t->to_thread == thread) {
   t->to_proc = ((void*)0);
   t->to_thread = ((void*)0);
   if (t->buffer) {
    t->buffer->transaction = ((void*)0);
    t->buffer = ((void*)0);
   }
   t = t->to_parent;
  } else if (t->from == thread) {
   t->from = ((void*)0);
   t = t->from_parent;
  } else
   BUG();
 }
 if (send_reply)
  binder_send_failed_reply(send_reply, BR_DEAD_REPLY);
 binder_release_work(&thread->todo);
 kfree(thread);
 binder_stats_deleted(BINDER_STAT_THREAD);
 return active_transactions;
}
