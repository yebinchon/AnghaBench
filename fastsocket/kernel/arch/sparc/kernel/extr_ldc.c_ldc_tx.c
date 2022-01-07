
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct ldc_channel {unsigned long chan_state; int lock; int hs_state; TYPE_1__ cfg; int tx_tail; int tx_head; int id; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned long LDC_CHANNEL_UP ;
 unsigned int LDC_EVENT_UP ;
 int LDC_HS_COMPLETE ;
 scalar_t__ LDC_MODE_RAW ;
 int LDC_STATE_CONNECTED ;
 int TX ;
 int ldc_set_state (struct ldc_channel*,int ) ;
 int ldcdbg (int ,char*,unsigned long,unsigned long,int ,int ) ;
 int send_events (struct ldc_channel*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long sun4v_ldc_tx_get_state (int ,int *,int *,unsigned long*) ;

__attribute__((used)) static irqreturn_t ldc_tx(int irq, void *dev_id)
{
 struct ldc_channel *lp = dev_id;
 unsigned long flags, hv_err, orig_state;
 unsigned int event_mask = 0;

 spin_lock_irqsave(&lp->lock, flags);

 orig_state = lp->chan_state;
 hv_err = sun4v_ldc_tx_get_state(lp->id,
     &lp->tx_head,
     &lp->tx_tail,
     &lp->chan_state);

 ldcdbg(TX, " TX state[0x%02lx:0x%02lx] head[0x%04lx] tail[0x%04lx]\n",
        orig_state, lp->chan_state, lp->tx_head, lp->tx_tail);

 if (lp->cfg.mode == LDC_MODE_RAW &&
     lp->chan_state == LDC_CHANNEL_UP) {
  lp->hs_state = LDC_HS_COMPLETE;
  ldc_set_state(lp, LDC_STATE_CONNECTED);

  event_mask |= LDC_EVENT_UP;
 }

 spin_unlock_irqrestore(&lp->lock, flags);

 send_events(lp, event_mask);

 return IRQ_HANDLED;
}
