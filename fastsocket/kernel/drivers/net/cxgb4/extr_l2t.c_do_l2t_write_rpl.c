
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct l2t_entry {scalar_t__ state; int lock; TYPE_2__* neigh; } ;
struct cpl_l2t_write_rpl {scalar_t__ status; } ;
struct adapter {TYPE_1__* l2t; int pdev_dev; } ;
struct TYPE_4__ {int nud_state; } ;
struct TYPE_3__ {struct l2t_entry* l2tab; } ;


 scalar_t__ CPL_ERR_NONE ;
 unsigned int F_SYNC_WR ;
 unsigned int GET_TID (struct cpl_l2t_write_rpl const*) ;
 int L2T_SIZE ;
 scalar_t__ L2T_STATE_STALE ;
 scalar_t__ L2T_STATE_SWITCHING ;
 scalar_t__ L2T_STATE_VALID ;
 int NUD_STALE ;
 int dev_err (int ,char*,scalar_t__,unsigned int) ;
 int send_pending (struct adapter*,struct l2t_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

void do_l2t_write_rpl(struct adapter *adap, const struct cpl_l2t_write_rpl *rpl)
{
 unsigned int tid = GET_TID(rpl);
 unsigned int idx = tid & (L2T_SIZE - 1);

 if (unlikely(rpl->status != CPL_ERR_NONE)) {
  dev_err(adap->pdev_dev,
   "Unexpected L2T_WRITE_RPL status %u for entry %u\n",
   rpl->status, idx);
  return;
 }

 if (tid & F_SYNC_WR) {
  struct l2t_entry *e = &adap->l2t->l2tab[idx];

  spin_lock(&e->lock);
  if (e->state != L2T_STATE_SWITCHING) {
   send_pending(adap, e);
   e->state = (e->neigh->nud_state & NUD_STALE) ?
     L2T_STATE_STALE : L2T_STATE_VALID;
  }
  spin_unlock(&e->lock);
 }
}
