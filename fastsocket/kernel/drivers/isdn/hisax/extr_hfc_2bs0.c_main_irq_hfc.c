
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int cip; scalar_t__ fifosize; } ;
struct TYPE_4__ {TYPE_1__ hfc; } ;
struct IsdnCardState {int (* BC_Read_Reg ) (struct IsdnCardState*,int ,int) ;int debug; TYPE_2__ hw; int (* BC_Write_Reg ) (struct IsdnCardState*,int ,int,int) ;} ;
struct BCState {scalar_t__ mode; int Flag; int squeue; scalar_t__ tx_skb; int rqueue; int channel; struct IsdnCardState* cs; } ;


 int BC_FLG_BUSY ;
 int B_RCVBUFREADY ;
 int B_XMTBUFREADY ;
 int HFC_CHANNEL (int ) ;
 int HFC_CIP ;
 int HFC_DATA ;
 int HFC_F1 ;
 int HFC_F2 ;
 int HFC_REC ;
 int HFC_STATUS ;
 int HFC_Z1 ;
 int HFC_Z2 ;
 int L1_DEB_HSCX ;
 scalar_t__ L1_MODE_HDLC ;
 scalar_t__ L1_MODE_TRANS ;
 int ReadZReg (struct BCState*,int) ;
 int WaitForBusy (struct IsdnCardState*) ;
 int WaitNoBusy (struct IsdnCardState*) ;
 int debugl1 (struct IsdnCardState*,char*,int ,int,int,...) ;
 struct sk_buff* hfc_empty_fifo (struct BCState*,int) ;
 int hfc_fill_fifo (struct BCState*) ;
 int schedule_event (struct BCState*,int ) ;
 scalar_t__ skb_dequeue (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct IsdnCardState*,int ,int,int) ;
 int stub2 (struct IsdnCardState*,int ,int) ;
 int stub3 (struct IsdnCardState*,int ,int) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void
main_irq_hfc(struct BCState *bcs)
{
 struct IsdnCardState *cs = bcs->cs;
 int z1, z2, rcnt;
 u_char f1, f2, cip;
 int receive, transmit, count = 5;
 struct sk_buff *skb;

      Begin:
 count--;
 cip = HFC_CIP | HFC_F1 | HFC_REC | HFC_CHANNEL(bcs->channel);
 if ((cip & 0xc3) != (cs->hw.hfc.cip & 0xc3)) {
  cs->BC_Write_Reg(cs, HFC_STATUS, cip, cip);
  WaitForBusy(cs);
 }
 WaitNoBusy(cs);
 receive = 0;
 if (bcs->mode == L1_MODE_HDLC) {
  f1 = cs->BC_Read_Reg(cs, HFC_DATA, cip);
  cip = HFC_CIP | HFC_F2 | HFC_REC | HFC_CHANNEL(bcs->channel);
  WaitNoBusy(cs);
  f2 = cs->BC_Read_Reg(cs, HFC_DATA, cip);
  if (f1 != f2) {
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "hfc rec %d f1(%d) f2(%d)",
     bcs->channel, f1, f2);
   receive = 1;
  }
 }
 if (receive || (bcs->mode == L1_MODE_TRANS)) {
  WaitForBusy(cs);
  z1 = ReadZReg(bcs, HFC_Z1 | HFC_REC | HFC_CHANNEL(bcs->channel));
  z2 = ReadZReg(bcs, HFC_Z2 | HFC_REC | HFC_CHANNEL(bcs->channel));
  rcnt = z1 - z2;
  if (rcnt < 0)
   rcnt += cs->hw.hfc.fifosize;
  if ((bcs->mode == L1_MODE_HDLC) || (rcnt)) {
   rcnt++;
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "hfc rec %d z1(%x) z2(%x) cnt(%d)",
     bcs->channel, z1, z2, rcnt);

   if ((skb = hfc_empty_fifo(bcs, rcnt))) {
    skb_queue_tail(&bcs->rqueue, skb);
    schedule_event(bcs, B_RCVBUFREADY);
   }
  }
  receive = 1;
 }
 if (bcs->tx_skb) {
  transmit = 1;
  test_and_set_bit(BC_FLG_BUSY, &bcs->Flag);
  hfc_fill_fifo(bcs);
  if (test_bit(BC_FLG_BUSY, &bcs->Flag))
   transmit = 0;
 } else {
  if ((bcs->tx_skb = skb_dequeue(&bcs->squeue))) {
   transmit = 1;
   test_and_set_bit(BC_FLG_BUSY, &bcs->Flag);
   hfc_fill_fifo(bcs);
   if (test_bit(BC_FLG_BUSY, &bcs->Flag))
    transmit = 0;
  } else {
   transmit = 0;
   schedule_event(bcs, B_XMTBUFREADY);
  }
 }
 if ((receive || transmit) && count)
  goto Begin;
 return;
}
