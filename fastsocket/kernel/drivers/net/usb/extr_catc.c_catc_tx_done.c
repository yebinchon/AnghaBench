
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int status; int actual_length; struct catc* context; } ;
struct catc {int tx_lock; TYPE_2__* netdev; int flags; scalar_t__ tx_ptr; } ;
struct TYPE_3__ {int tx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; int trans_start; } ;


 int ECONNRESET ;
 int TX_RUNNING ;
 int catc_tx_run (struct catc*) ;
 int clear_bit (int ,int *) ;
 int dbg (char*,...) ;
 int jiffies ;
 int netif_wake_queue (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void catc_tx_done(struct urb *urb)
{
 struct catc *catc = urb->context;
 unsigned long flags;
 int r, status = urb->status;

 if (status == -ECONNRESET) {
  dbg("Tx Reset.");
  urb->status = 0;
  catc->netdev->trans_start = jiffies;
  catc->netdev->stats.tx_errors++;
  clear_bit(TX_RUNNING, &catc->flags);
  netif_wake_queue(catc->netdev);
  return;
 }

 if (status) {
  dbg("tx_done, status %d, length %d", status, urb->actual_length);
  return;
 }

 spin_lock_irqsave(&catc->tx_lock, flags);

 if (catc->tx_ptr) {
  r = catc_tx_run(catc);
  if (unlikely(r < 0))
   clear_bit(TX_RUNNING, &catc->flags);
 } else {
  clear_bit(TX_RUNNING, &catc->flags);
 }

 netif_wake_queue(catc->netdev);

 spin_unlock_irqrestore(&catc->tx_lock, flags);
}
