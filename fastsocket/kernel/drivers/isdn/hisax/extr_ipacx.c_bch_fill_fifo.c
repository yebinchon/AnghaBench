
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct IsdnCardState {int debug; int (* BC_Write_Reg ) (struct IsdnCardState*,int,int ,int) ;} ;
struct TYPE_4__ {int hscx; int count; } ;
struct TYPE_5__ {TYPE_1__ hscx; } ;
struct BCState {scalar_t__ mode; int tx_cnt; char* blog; TYPE_2__ hw; TYPE_3__* tx_skb; struct IsdnCardState* cs; } ;
struct TYPE_6__ {int len; int* data; } ;


 int B_FIFO_SIZE ;
 int IPACX_CMDRB ;
 int IPACX_XFIFOB ;
 int L1_DEB_HSCX ;
 int L1_DEB_HSCX_FIFO ;
 scalar_t__ L1_MODE_TRANS ;
 int QuickHex (char*,int*,int) ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int skb_pull (TYPE_3__*,int) ;
 int sprintf (char*,char*,int,int) ;
 int stub1 (struct IsdnCardState*,int,int ,int) ;
 int stub2 (struct IsdnCardState*,int,int ,int) ;

__attribute__((used)) static void
bch_fill_fifo(struct BCState *bcs)
{
 struct IsdnCardState *cs;
 int more, count, cnt;
 u_char *ptr, *p, hscx;

 cs = bcs->cs;
 if ((cs->debug &L1_DEB_HSCX) && !(cs->debug &L1_DEB_HSCX_FIFO))
  debugl1(cs, "bch_fill_fifo()");

 if (!bcs->tx_skb) return;
 if (bcs->tx_skb->len <= 0) return;

 hscx = bcs->hw.hscx.hscx;
 more = (bcs->mode == L1_MODE_TRANS) ? 1 : 0;
 if (bcs->tx_skb->len > B_FIFO_SIZE) {
  more = 1;
  count = B_FIFO_SIZE;
 } else {
  count = bcs->tx_skb->len;
 }
 cnt = count;

 p = ptr = bcs->tx_skb->data;
 skb_pull(bcs->tx_skb, count);
 bcs->tx_cnt -= count;
 bcs->hw.hscx.count += count;
 while (cnt--) cs->BC_Write_Reg(cs, hscx, IPACX_XFIFOB, *p++);
 cs->BC_Write_Reg(cs, hscx, IPACX_CMDRB, (more ? 0x08 : 0x0a));

 if (cs->debug &L1_DEB_HSCX_FIFO) {
  char *t = bcs->blog;

  t += sprintf(t, "chb_fill_fifo() B-%d cnt %d", hscx, count);
  QuickHex(t, ptr, count);
  debugl1(cs, bcs->blog);
 }
}
