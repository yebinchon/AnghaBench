
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ bfifosize; } ;
struct TYPE_4__ {TYPE_1__ hfcD; } ;
struct IsdnCardState {int debug; int HW_Flags; TYPE_2__ hw; } ;
struct BCState {int rqueue; int channel; struct IsdnCardState* cs; } ;


 int B_RCVBUFREADY ;
 int FLG_LOCK_ATOMIC ;
 scalar_t__ HFCB_CHANNEL (int ) ;
 scalar_t__ HFCB_F1 ;
 scalar_t__ HFCB_F2 ;
 scalar_t__ HFCB_FIFO ;
 scalar_t__ HFCB_REC ;
 scalar_t__ HFCB_Z1 ;
 scalar_t__ HFCB_Z2 ;
 int HFCD_DATA ;
 int L1_DEB_HSCX ;
 scalar_t__ ReadReg (struct IsdnCardState*,int ,scalar_t__) ;
 int ReadZReg (struct IsdnCardState*,scalar_t__) ;
 int SelFiFo (struct IsdnCardState*,scalar_t__) ;
 int WaitNoBusy (struct IsdnCardState*) ;
 int debugl1 (struct IsdnCardState*,char*,int ,...) ;
 struct sk_buff* hfc_empty_fifo (struct BCState*,int) ;
 int schedule_event (struct BCState*,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
main_rec_2bds0(struct BCState *bcs)
{
 struct IsdnCardState *cs = bcs->cs;
 int z1, z2, rcnt;
 u_char f1, f2, cip;
 int receive, count = 5;
 struct sk_buff *skb;

    Begin:
 count--;
 if (test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
  debugl1(cs,"rec_data %d blocked", bcs->channel);
  return;
 }
 SelFiFo(cs, HFCB_REC | HFCB_CHANNEL(bcs->channel));
 cip = HFCB_FIFO | HFCB_F1 | HFCB_REC | HFCB_CHANNEL(bcs->channel);
 WaitNoBusy(cs);
 f1 = ReadReg(cs, HFCD_DATA, cip);
 cip = HFCB_FIFO | HFCB_F2 | HFCB_REC | HFCB_CHANNEL(bcs->channel);
 WaitNoBusy(cs);
 f2 = ReadReg(cs, HFCD_DATA, cip);
 if (f1 != f2) {
  if (cs->debug & L1_DEB_HSCX)
   debugl1(cs, "hfc rec %d f1(%d) f2(%d)",
    bcs->channel, f1, f2);
  z1 = ReadZReg(cs, HFCB_FIFO | HFCB_Z1 | HFCB_REC | HFCB_CHANNEL(bcs->channel));
  z2 = ReadZReg(cs, HFCB_FIFO | HFCB_Z2 | HFCB_REC | HFCB_CHANNEL(bcs->channel));
  rcnt = z1 - z2;
  if (rcnt < 0)
   rcnt += cs->hw.hfcD.bfifosize;
  rcnt++;
  if (cs->debug & L1_DEB_HSCX)
   debugl1(cs, "hfc rec %d z1(%x) z2(%x) cnt(%d)",
    bcs->channel, z1, z2, rcnt);
  if ((skb = hfc_empty_fifo(bcs, rcnt))) {
   skb_queue_tail(&bcs->rqueue, skb);
   schedule_event(bcs, B_RCVBUFREADY);
  }
  rcnt = f1 -f2;
  if (rcnt<0)
   rcnt += 32;
  if (rcnt>1)
   receive = 1;
  else
   receive = 0;
 } else
  receive = 0;
 test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
 if (count && receive)
  goto Begin;
 return;
}
