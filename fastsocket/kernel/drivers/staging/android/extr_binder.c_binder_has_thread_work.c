
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_thread {scalar_t__ return_error; int looper; int todo; } ;


 int BINDER_LOOPER_STATE_NEED_RETURN ;
 scalar_t__ BR_OK ;
 int list_empty (int *) ;

__attribute__((used)) static int binder_has_thread_work(struct binder_thread *thread)
{
 return !list_empty(&thread->todo) || thread->return_error != BR_OK ||
  (thread->looper & BINDER_LOOPER_STATE_NEED_RETURN);
}
