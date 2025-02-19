
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ldc_packet {int type; } ;
struct TYPE_2__ {scalar_t__ mode; } ;
struct ldc_channel {unsigned long chan_state; int rx_head; unsigned long rx_tail; scalar_t__ hs_state; int flags; int rx_num_entries; int lock; struct ldc_packet* rx_base; TYPE_1__ cfg; int id; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned long LDC_CHANNEL_UP ;



 unsigned int LDC_EVENT_DATA_READY ;
 unsigned int LDC_EVENT_RESET ;
 unsigned int LDC_EVENT_UP ;
 int LDC_FLAG_RESET ;
 scalar_t__ LDC_HS_COMPLETE ;
 scalar_t__ LDC_MODE_RAW ;
 int LDC_PACKET_SIZE ;
 int LDC_STATE_CONNECTED ;
 int RX ;
 int __set_rx_head (struct ldc_channel*,unsigned long) ;
 int ldc_abort (struct ldc_channel*) ;
 int ldc_set_state (struct ldc_channel*,int ) ;
 int ldcdbg (int ,char*,unsigned long,unsigned long,int,unsigned long) ;
 int process_control_frame (struct ldc_channel*,struct ldc_packet*) ;
 int process_error_frame (struct ldc_channel*,struct ldc_packet*) ;
 int send_events (struct ldc_channel*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long sun4v_ldc_rx_get_state (int ,int*,unsigned long*,unsigned long*) ;

__attribute__((used)) static irqreturn_t ldc_rx(int irq, void *dev_id)
{
 struct ldc_channel *lp = dev_id;
 unsigned long orig_state, hv_err, flags;
 unsigned int event_mask;

 spin_lock_irqsave(&lp->lock, flags);

 orig_state = lp->chan_state;
 hv_err = sun4v_ldc_rx_get_state(lp->id,
     &lp->rx_head,
     &lp->rx_tail,
     &lp->chan_state);

 ldcdbg(RX, "RX state[0x%02lx:0x%02lx] head[0x%04lx] tail[0x%04lx]\n",
        orig_state, lp->chan_state, lp->rx_head, lp->rx_tail);

 event_mask = 0;

 if (lp->cfg.mode == LDC_MODE_RAW &&
     lp->chan_state == LDC_CHANNEL_UP) {
  lp->hs_state = LDC_HS_COMPLETE;
  ldc_set_state(lp, LDC_STATE_CONNECTED);

  event_mask |= LDC_EVENT_UP;

  orig_state = lp->chan_state;
 }




 if (lp->flags & LDC_FLAG_RESET) {
  (void) __set_rx_head(lp, lp->rx_tail);
  goto out;
 }





 if (lp->hs_state == LDC_HS_COMPLETE) {
handshake_complete:
  if (lp->chan_state != orig_state) {
   unsigned int event = LDC_EVENT_RESET;

   if (lp->chan_state == LDC_CHANNEL_UP)
    event = LDC_EVENT_UP;

   event_mask |= event;
  }
  if (lp->rx_head != lp->rx_tail)
   event_mask |= LDC_EVENT_DATA_READY;

  goto out;
 }

 if (lp->chan_state != orig_state)
  goto out;

 while (lp->rx_head != lp->rx_tail) {
  struct ldc_packet *p;
  unsigned long new;
  int err;

  p = lp->rx_base + (lp->rx_head / LDC_PACKET_SIZE);

  switch (p->type) {
  case 130:
   err = process_control_frame(lp, p);
   if (err > 0)
    event_mask |= err;
   break;

  case 129:
   event_mask |= LDC_EVENT_DATA_READY;
   err = 0;
   break;

  case 128:
   err = process_error_frame(lp, p);
   break;

  default:
   err = ldc_abort(lp);
   break;
  }

  if (err < 0)
   break;

  new = lp->rx_head;
  new += LDC_PACKET_SIZE;
  if (new == (lp->rx_num_entries * LDC_PACKET_SIZE))
   new = 0;
  lp->rx_head = new;

  err = __set_rx_head(lp, new);
  if (err < 0) {
   (void) ldc_abort(lp);
   break;
  }
  if (lp->hs_state == LDC_HS_COMPLETE)
   goto handshake_complete;
 }

out:
 spin_unlock_irqrestore(&lp->lock, flags);

 send_events(lp, event_mask);

 return IRQ_HANDLED;
}
