
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmdbuf_t {int dummy; } ;
struct TYPE_4__ {TYPE_1__* usb; } ;
struct cardstate {struct cmdbuf_t* cmdbuf; TYPE_2__ hw; struct bc_state* bcs; } ;
struct bc_state {scalar_t__ tx_skb; int squeue; } ;
struct TYPE_3__ {scalar_t__ busy; } ;


 int DEBUG_INTR ;
 int DEBUG_OUTPUT ;
 int gig_dbg (int ,char*,...) ;
 scalar_t__ send_cb (struct cardstate*,struct cmdbuf_t*) ;
 scalar_t__ skb_dequeue (int *) ;
 scalar_t__ write_modem (struct cardstate*) ;

__attribute__((used)) static void gigaset_modem_fill(unsigned long data)
{
 struct cardstate *cs = (struct cardstate *) data;
 struct bc_state *bcs = &cs->bcs[0];
 struct cmdbuf_t *cb;
 int again;

 gig_dbg(DEBUG_OUTPUT, "modem_fill");

 if (cs->hw.usb->busy) {
  gig_dbg(DEBUG_OUTPUT, "modem_fill: busy");
  return;
 }

 do {
  again = 0;
  if (!bcs->tx_skb) {
   cb = cs->cmdbuf;
   if (cb) {
    gig_dbg(DEBUG_OUTPUT, "modem_fill: cb");
    if (send_cb(cs, cb) < 0) {
     gig_dbg(DEBUG_OUTPUT,
      "modem_fill: send_cb failed");
     again = 1;

    }
   } else {
    bcs->tx_skb = skb_dequeue(&bcs->squeue);
    if (bcs->tx_skb)
     gig_dbg(DEBUG_INTR,
      "Dequeued skb (Adr: %lx)!",
      (unsigned long) bcs->tx_skb);
   }
  }

  if (bcs->tx_skb) {
   gig_dbg(DEBUG_OUTPUT, "modem_fill: tx_skb");
   if (write_modem(cs) < 0) {
    gig_dbg(DEBUG_OUTPUT,
     "modem_fill: write_modem failed");

    again = 1;
   }
  }
 } while (again);
}
