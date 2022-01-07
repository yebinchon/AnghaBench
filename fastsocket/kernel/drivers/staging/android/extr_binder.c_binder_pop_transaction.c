
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct binder_transaction {TYPE_1__* buffer; scalar_t__ need_reply; struct binder_thread* from; struct binder_transaction* from_parent; } ;
struct binder_thread {struct binder_transaction* transaction_stack; } ;
struct TYPE_2__ {int * transaction; } ;


 int BINDER_STAT_TRANSACTION ;
 int BUG_ON (int) ;
 int binder_stats_deleted (int ) ;
 int kfree (struct binder_transaction*) ;

__attribute__((used)) static void binder_pop_transaction(struct binder_thread *target_thread,
       struct binder_transaction *t)
{
 if (target_thread) {
  BUG_ON(target_thread->transaction_stack != t);
  BUG_ON(target_thread->transaction_stack->from != target_thread);
  target_thread->transaction_stack =
   target_thread->transaction_stack->from_parent;
  t->from = ((void*)0);
 }
 t->need_reply = 0;
 if (t->buffer)
  t->buffer->transaction = ((void*)0);
 kfree(t);
 binder_stats_deleted(BINDER_STAT_TRANSACTION);
}
