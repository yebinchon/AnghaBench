
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct IsdnCardState {int debug; struct BCState* bcs; } ;
struct TYPE_3__ {int hscx; scalar_t__ count; } ;
struct TYPE_4__ {TYPE_1__ hscx; } ;
struct BCState {int mode; TYPE_2__ hw; int tx_cnt; scalar_t__ tx_skb; int err_tx; } ;


 int HSCX_EXIR ;
 int HSCX_ISTA ;
 int L1_DEB_HSCX ;
 int L1_DEB_WARN ;
 scalar_t__ L1_MODE_TRANS ;
 int READHSCX (struct IsdnCardState*,int,int ) ;
 int WriteHSCXCMDR (struct IsdnCardState*,int ,int) ;
 int debugl1 (struct IsdnCardState*,char*,int) ;
 int hscx_fill_fifo (struct BCState*) ;
 int hscx_interrupt (struct IsdnCardState*,int,int) ;
 int skb_push (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
hscx_int_main(struct IsdnCardState *cs, u_char val)
{

 u_char exval;
 struct BCState *bcs;

 if (val & 0x01) {
  bcs = cs->bcs + 1;
  exval = READHSCX(cs, 1, HSCX_EXIR);
  if (exval & 0x40) {
   if (bcs->mode == 1)
    hscx_fill_fifo(bcs);
   else {






    if (bcs->tx_skb) {
     skb_push(bcs->tx_skb, bcs->hw.hscx.count);
     bcs->tx_cnt += bcs->hw.hscx.count;
     bcs->hw.hscx.count = 0;
    }
    WriteHSCXCMDR(cs, bcs->hw.hscx.hscx, 0x01);
    if (cs->debug & L1_DEB_WARN)
     debugl1(cs, "HSCX B EXIR %x Lost TX", exval);
   }
  } else if (cs->debug & L1_DEB_HSCX)
   debugl1(cs, "HSCX B EXIR %x", exval);
 }
 if (val & 0xf8) {
  if (cs->debug & L1_DEB_HSCX)
   debugl1(cs, "HSCX B interrupt %x", val);
  hscx_interrupt(cs, val, 1);
 }
 if (val & 0x02) {
  bcs = cs->bcs;
  exval = READHSCX(cs, 0, HSCX_EXIR);
  if (exval & 0x40) {
   if (bcs->mode == L1_MODE_TRANS)
    hscx_fill_fifo(bcs);
   else {






    if (bcs->tx_skb) {
     skb_push(bcs->tx_skb, bcs->hw.hscx.count);
     bcs->tx_cnt += bcs->hw.hscx.count;
     bcs->hw.hscx.count = 0;
    }
    WriteHSCXCMDR(cs, bcs->hw.hscx.hscx, 0x01);
    if (cs->debug & L1_DEB_WARN)
     debugl1(cs, "HSCX A EXIR %x Lost TX", exval);
   }
  } else if (cs->debug & L1_DEB_HSCX)
   debugl1(cs, "HSCX A EXIR %x", exval);
 }
 if (val & 0x04) {
  exval = READHSCX(cs, 0, HSCX_ISTA);
  if (cs->debug & L1_DEB_HSCX)
   debugl1(cs, "HSCX A interrupt %x", exval);
  hscx_interrupt(cs, exval, 0);
 }
}
