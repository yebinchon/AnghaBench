
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmdbuf_t {struct cmdbuf_t* next; } ;
struct cardstate {int gotfwver; int channels; int waitqueue; scalar_t__ waiting; int cmd_result; scalar_t__ bcs; int lock; scalar_t__ cbytes; scalar_t__ commands_pending; scalar_t__ cur_at_seq; scalar_t__ dle; scalar_t__ cmdbytes; scalar_t__ curlen; int * lastcmdbuf; struct cmdbuf_t* cmdbuf; TYPE_1__* inbuf; int at_state; int mstate; int mode; } ;
struct TYPE_2__ {scalar_t__ tail; scalar_t__ head; int inputstate; struct cmdbuf_t* rcvbuf; } ;


 int ENODEV ;
 int INS_command ;
 int MS_UNINITIALIZED ;
 int M_UNKNOWN ;
 int clear_at_state (int *) ;
 int dealloc_at_states (struct cardstate*) ;
 int free_strings (int *) ;
 int gigaset_at_init (int *,int *,struct cardstate*,int ) ;
 int gigaset_freebcs (scalar_t__) ;
 int gigaset_initbcs (scalar_t__,struct cardstate*,int) ;
 int kfree (struct cmdbuf_t*) ;
 int pr_err (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cleanup_cs(struct cardstate *cs)
{
 struct cmdbuf_t *cb, *tcb;
 int i;
 unsigned long flags;

 spin_lock_irqsave(&cs->lock, flags);

 cs->mode = M_UNKNOWN;
 cs->mstate = MS_UNINITIALIZED;

 clear_at_state(&cs->at_state);
 dealloc_at_states(cs);
 free_strings(&cs->at_state);
 gigaset_at_init(&cs->at_state, ((void*)0), cs, 0);

 kfree(cs->inbuf->rcvbuf);
 cs->inbuf->rcvbuf = ((void*)0);
 cs->inbuf->inputstate = INS_command;
 cs->inbuf->head = 0;
 cs->inbuf->tail = 0;

 cb = cs->cmdbuf;
 while (cb) {
  tcb = cb;
  cb = cb->next;
  kfree(tcb);
 }
 cs->cmdbuf = cs->lastcmdbuf = ((void*)0);
 cs->curlen = 0;
 cs->cmdbytes = 0;
 cs->gotfwver = -1;
 cs->dle = 0;
 cs->cur_at_seq = 0;
 cs->commands_pending = 0;
 cs->cbytes = 0;

 spin_unlock_irqrestore(&cs->lock, flags);

 for (i = 0; i < cs->channels; ++i) {
  gigaset_freebcs(cs->bcs + i);
  if (!gigaset_initbcs(cs->bcs + i, cs, i))
   pr_err("could not allocate channel %d data\n", i);
 }

 if (cs->waiting) {
  cs->cmd_result = -ENODEV;
  cs->waiting = 0;
  wake_up_interruptible(&cs->waitqueue);
 }
}
