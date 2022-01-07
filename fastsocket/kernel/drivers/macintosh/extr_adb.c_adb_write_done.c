
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adbdev_state {int complete; int lock; int wait_queue; struct adbdev_state* next; struct adbdev_state* completed; int n_pending; int inuse; scalar_t__ reply_len; scalar_t__ arg; } ;
struct adb_request {int complete; int lock; int wait_queue; struct adb_request* next; struct adb_request* completed; int n_pending; int inuse; scalar_t__ reply_len; scalar_t__ arg; } ;


 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int kfree (struct adbdev_state*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void adb_write_done(struct adb_request *req)
{
 struct adbdev_state *state = (struct adbdev_state *) req->arg;
 unsigned long flags;

 if (!req->complete) {
  req->reply_len = 0;
  req->complete = 1;
 }
 spin_lock_irqsave(&state->lock, flags);
 atomic_dec(&state->n_pending);
 if (!state->inuse) {
  kfree(req);
  if (atomic_read(&state->n_pending) == 0) {
   spin_unlock_irqrestore(&state->lock, flags);
   kfree(state);
   return;
  }
 } else {
  struct adb_request **ap = &state->completed;
  while (*ap != ((void*)0))
   ap = &(*ap)->next;
  req->next = ((void*)0);
  *ap = req;
  wake_up_interruptible(&state->wait_queue);
 }
 spin_unlock_irqrestore(&state->lock, flags);
}
