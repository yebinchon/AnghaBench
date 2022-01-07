
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmdbuf_t {int len; int buf; } ;
struct TYPE_2__ {struct bas_cardstate* bas; } ;
struct cardstate {int cmdlock; struct cmdbuf_t* cmdbuf; int bcs; TYPE_1__ hw; } ;
struct bas_cardstate {int basstate; scalar_t__ retry_cmd_out; } ;


 int BAS_TIMEOUT ;
 int BS_ATOPEN ;
 int BS_ATREADY ;
 int BS_SUSPEND ;
 int DEBUG_LOCKCMD ;
 int DEBUG_TRANSCMD ;
 int EHOSTUNREACH ;
 int HD_OPEN_ATCHANNEL ;
 int atwrite_submit (struct cardstate*,int ,int ) ;
 int complete_cb (struct cardstate*) ;
 int gig_dbg (int,char*) ;
 int req_submit (int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int start_cbsend(struct cardstate *cs)
{
 struct cmdbuf_t *cb;
 struct bas_cardstate *ucs = cs->hw.bas;
 unsigned long flags;
 int rc;
 int retval = 0;


 if (ucs->basstate & BS_SUSPEND) {
  gig_dbg(DEBUG_TRANSCMD|DEBUG_LOCKCMD, "suspending");
  return -EHOSTUNREACH;
 }


 if (!(ucs->basstate & BS_ATOPEN)) {
  gig_dbg(DEBUG_TRANSCMD|DEBUG_LOCKCMD, "AT channel not open");
  rc = req_submit(cs->bcs, HD_OPEN_ATCHANNEL, 0, BAS_TIMEOUT);
  if (rc < 0) {

   spin_lock_irqsave(&cs->cmdlock, flags);
   while (cs->cmdbuf != ((void*)0))
    complete_cb(cs);
   spin_unlock_irqrestore(&cs->cmdlock, flags);
  }
  return rc;
 }


 spin_lock_irqsave(&cs->cmdlock, flags);

 while ((cb = cs->cmdbuf) != ((void*)0) && (ucs->basstate & BS_ATREADY)) {
  ucs->retry_cmd_out = 0;
  rc = atwrite_submit(cs, cb->buf, cb->len);
  if (unlikely(rc)) {
   retval = rc;
   complete_cb(cs);
  }
 }

 spin_unlock_irqrestore(&cs->cmdlock, flags);
 return retval;
}
