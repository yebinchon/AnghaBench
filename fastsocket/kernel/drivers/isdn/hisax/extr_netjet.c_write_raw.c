
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_long ;
typedef size_t u_int ;
struct TYPE_15__ {int sendcnt; int* sp; size_t* s_end; size_t* send; size_t s_tot; size_t* sendp; int free; } ;
struct TYPE_16__ {TYPE_5__ tiger; } ;
struct BCState {TYPE_8__* cs; scalar_t__ channel; int Flag; TYPE_6__ hw; int tqueue; int event; int squeue; TYPE_7__* tx_skb; int aclock; int ackcnt; TYPE_4__* st; } ;
struct TYPE_11__ {int irqstat0; } ;
struct TYPE_12__ {TYPE_1__ njet; } ;
struct TYPE_18__ {int debug; TYPE_2__ hw; } ;
struct TYPE_17__ {scalar_t__ pkt_type; scalar_t__ len; } ;
struct TYPE_13__ {int flag; } ;
struct TYPE_14__ {TYPE_3__ lli; } ;


 int BC_FLG_BUSY ;
 int BC_FLG_EMPTY ;
 int BC_FLG_HALF ;
 int BC_FLG_NOFRAME ;
 int B_ACKPENDING ;
 int B_XMTBUFREADY ;
 int FLG_LLI_L1WAKEUP ;
 int L1_DEB_HSCX ;
 int L1_DEB_HSCX_FIFO ;
 int NETJET_DMA_TXSIZE ;
 scalar_t__ PACKET_NOACK ;
 int debugl1 (TYPE_8__*,char*,...) ;
 int dev_kfree_skb_any (TYPE_7__*) ;
 int fill_mem (struct BCState*,size_t*,int,scalar_t__,int) ;
 int netjet_fill_dma (struct BCState*) ;
 int printframe (TYPE_8__*,int*,size_t,char*) ;
 int schedule_event (struct BCState*,int ) ;
 int schedule_work (int *) ;
 TYPE_7__* skb_dequeue (int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void write_raw(struct BCState *bcs, u_int *buf, int cnt) {
 u_int mask, val, *p=buf;
 u_int i, s_cnt;

        if (cnt <= 0)
         return;
 if (test_bit(BC_FLG_BUSY, &bcs->Flag)) {
  if (bcs->hw.tiger.sendcnt> cnt) {
   s_cnt = cnt;
   bcs->hw.tiger.sendcnt -= cnt;
  } else {
   s_cnt = bcs->hw.tiger.sendcnt;
   bcs->hw.tiger.sendcnt = 0;
  }
  if (bcs->channel)
   mask = 0xffff00ff;
  else
   mask = 0xffffff00;
  for (i=0; i<s_cnt; i++) {
   val = bcs->channel ? ((bcs->hw.tiger.sp[i] <<8) & 0xff00) :
    (bcs->hw.tiger.sp[i]);
   *p &= mask;
   *p++ |= val;
   if (p>bcs->hw.tiger.s_end)
    p = bcs->hw.tiger.send;
  }
  bcs->hw.tiger.s_tot += s_cnt;
  if (bcs->cs->debug & L1_DEB_HSCX)
   debugl1(bcs->cs,"tiger write_raw: c%d %p-%p %d/%d %d %x", bcs->channel,
    buf, p, s_cnt, cnt,
    bcs->hw.tiger.sendcnt, bcs->cs->hw.njet.irqstat0);
  if (bcs->cs->debug & L1_DEB_HSCX_FIFO)
   printframe(bcs->cs, bcs->hw.tiger.sp, s_cnt, "snd");
  bcs->hw.tiger.sp += s_cnt;
  bcs->hw.tiger.sendp = p;
  if (!bcs->hw.tiger.sendcnt) {
   if (!bcs->tx_skb) {
    debugl1(bcs->cs,"tiger write_raw: NULL skb s_cnt %d", s_cnt);
   } else {
    if (test_bit(FLG_LLI_L1WAKEUP,&bcs->st->lli.flag) &&
     (PACKET_NOACK != bcs->tx_skb->pkt_type)) {
     u_long flags;
     spin_lock_irqsave(&bcs->aclock, flags);
     bcs->ackcnt += bcs->tx_skb->len;
     spin_unlock_irqrestore(&bcs->aclock, flags);
     schedule_event(bcs, B_ACKPENDING);
    }
    dev_kfree_skb_any(bcs->tx_skb);
    bcs->tx_skb = ((void*)0);
   }
   test_and_clear_bit(BC_FLG_BUSY, &bcs->Flag);
   bcs->hw.tiger.free = cnt - s_cnt;
   if (bcs->hw.tiger.free > (NETJET_DMA_TXSIZE/2))
    test_and_set_bit(BC_FLG_HALF, &bcs->Flag);
   else {
    test_and_clear_bit(BC_FLG_HALF, &bcs->Flag);
    test_and_set_bit(BC_FLG_NOFRAME, &bcs->Flag);
   }
   if ((bcs->tx_skb = skb_dequeue(&bcs->squeue))) {
    netjet_fill_dma(bcs);
   } else {
    mask ^= 0xffffffff;
    if (s_cnt < cnt) {
     for (i=s_cnt; i<cnt;i++) {
      *p++ |= mask;
      if (p>bcs->hw.tiger.s_end)
       p = bcs->hw.tiger.send;
     }
     if (bcs->cs->debug & L1_DEB_HSCX)
      debugl1(bcs->cs, "tiger write_raw: fill rest %d",
       cnt - s_cnt);
    }
    test_and_set_bit(B_XMTBUFREADY, &bcs->event);
    schedule_work(&bcs->tqueue);
   }
  }
 } else if (test_and_clear_bit(BC_FLG_NOFRAME, &bcs->Flag)) {
  test_and_set_bit(BC_FLG_HALF, &bcs->Flag);
  fill_mem(bcs, buf, cnt, bcs->channel, 0xff);
  bcs->hw.tiger.free += cnt;
  if (bcs->cs->debug & L1_DEB_HSCX)
   debugl1(bcs->cs,"tiger write_raw: fill half");
 } else if (test_and_clear_bit(BC_FLG_HALF, &bcs->Flag)) {
  test_and_set_bit(BC_FLG_EMPTY, &bcs->Flag);
  fill_mem(bcs, buf, cnt, bcs->channel, 0xff);
  if (bcs->cs->debug & L1_DEB_HSCX)
   debugl1(bcs->cs,"tiger write_raw: fill full");
 }
}
