
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cardstate {int cs_init; int channels; int mutex; scalar_t__ bcs; scalar_t__ inbuf; int at_state; TYPE_1__* ops; int timer; int event_tasklet; int lock; scalar_t__ running; } ;
struct TYPE_2__ {int (* freecshw ) (struct cardstate*) ;} ;


 int DEBUG_INIT ;
 int ISDN_STAT_UNLOAD ;
 int VALID_ID ;
 int clear_at_state (int *) ;
 int clear_events (struct cardstate*) ;
 int dealloc_at_states (struct cardstate*) ;
 int del_timer_sync (int *) ;
 int free_cs (struct cardstate*) ;
 int gig_dbg (int ,char*,...) ;
 int gigaset_free_dev_sysfs (struct cardstate*) ;
 int gigaset_freebcs (scalar_t__) ;
 int gigaset_i4l_cmd (struct cardstate*,int ) ;
 int gigaset_if_free (struct cardstate*) ;
 int kfree (scalar_t__) ;
 int make_invalid (struct cardstate*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct cardstate*) ;
 int tasklet_kill (int *) ;

void gigaset_freecs(struct cardstate *cs)
{
 int i;
 unsigned long flags;

 if (!cs)
  return;

 mutex_lock(&cs->mutex);

 if (!cs->bcs)
  goto f_cs;
 if (!cs->inbuf)
  goto f_bcs;

 spin_lock_irqsave(&cs->lock, flags);
 cs->running = 0;
 spin_unlock_irqrestore(&cs->lock, flags);


 tasklet_kill(&cs->event_tasklet);
 del_timer_sync(&cs->timer);

 switch (cs->cs_init) {
 default:

  gigaset_free_dev_sysfs(cs);

  gigaset_if_free(cs);

  gig_dbg(DEBUG_INIT, "clearing hw");
  cs->ops->freecshw(cs);




 case 2:

  make_invalid(cs, VALID_ID);
  gig_dbg(DEBUG_INIT, "clearing iif");
  gigaset_i4l_cmd(cs, ISDN_STAT_UNLOAD);


 case 1:
  gig_dbg(DEBUG_INIT, "clearing at_state");
  clear_at_state(&cs->at_state);
  dealloc_at_states(cs);


 case 0:
  for (i = 0; i < cs->channels; ++i) {
   gig_dbg(DEBUG_INIT, "clearing bcs[%d]", i);
   gigaset_freebcs(cs->bcs + i);
  }

  clear_events(cs);
  gig_dbg(DEBUG_INIT, "freeing inbuf");
  kfree(cs->inbuf);
 }
f_bcs: gig_dbg(DEBUG_INIT, "freeing bcs[]");
 kfree(cs->bcs);
f_cs: gig_dbg(DEBUG_INIT, "freeing cs");
 mutex_unlock(&cs->mutex);
 free_cs(cs);
}
