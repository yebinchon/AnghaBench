
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending_commands; } ;
struct cardstate {int commands_pending; int lock; TYPE_2__* ops; TYPE_1__ at_state; int cidmode; } ;
struct bc_state {int chstate; } ;
struct at_state_t {int list; int seq_index; struct cardstate* cs; struct bc_state* bcs; } ;
struct TYPE_4__ {int (* close_bchannel ) (struct bc_state*) ;} ;


 int CHS_D_UP ;
 int CHS_NOTIFY_LL ;
 int DEBUG_CMD ;
 int ISDN_STAT_DHUP ;
 int PC_UMMODE ;
 int gig_dbg (int ,char*) ;
 int gigaset_i4l_channel_cmd (struct bc_state*,int ) ;
 int kfree (struct at_state_t*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct bc_state*) ;

__attribute__((used)) static void disconnect(struct at_state_t **at_state_p)
{
 unsigned long flags;
 struct bc_state *bcs = (*at_state_p)->bcs;
 struct cardstate *cs = (*at_state_p)->cs;

 spin_lock_irqsave(&cs->lock, flags);
 ++(*at_state_p)->seq_index;


 if (!cs->cidmode) {
  cs->at_state.pending_commands |= PC_UMMODE;
  cs->commands_pending = 1;
  gig_dbg(DEBUG_CMD, "Scheduling PC_UMMODE");
 }
 spin_unlock_irqrestore(&cs->lock, flags);

 if (bcs) {

  cs->ops->close_bchannel(bcs);

  if (bcs->chstate & (CHS_D_UP | CHS_NOTIFY_LL)) {
   bcs->chstate &= ~(CHS_D_UP | CHS_NOTIFY_LL);
   gigaset_i4l_channel_cmd(bcs, ISDN_STAT_DHUP);
  }
 } else {

  spin_lock_irqsave(&cs->lock, flags);
  list_del(&(*at_state_p)->list);
  kfree(*at_state_p);
  *at_state_p = ((void*)0);
  spin_unlock_irqrestore(&cs->lock, flags);
 }
}
