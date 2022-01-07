
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct IsdnCardState {int debug; } ;
struct TYPE_4__ {int count; scalar_t__ hscx; } ;
struct TYPE_5__ {TYPE_1__ hscx; } ;
struct BCState {scalar_t__ mode; int tx_cnt; char* blog; TYPE_2__ hw; TYPE_3__* tx_skb; struct IsdnCardState* cs; } ;
struct TYPE_6__ {int len; int * data; } ;


 int L1_DEB_HSCX ;
 int L1_DEB_HSCX_FIFO ;
 scalar_t__ L1_MODE_TRANS ;
 int QuickHex (char*,int *,int) ;
 int WRITEJADEFIFO (struct IsdnCardState*,scalar_t__,int *,int) ;
 int WriteJADECMDR (struct IsdnCardState*,scalar_t__,int ,int) ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int jadeXCMD_XF ;
 int jadeXCMD_XME ;
 int jade_HDLC_XCMD ;
 int skb_pull (TYPE_3__*,int) ;
 int sprintf (char*,char*,char,int) ;
 int waitforXFW (struct IsdnCardState*,scalar_t__) ;

__attribute__((used)) static void
jade_fill_fifo(struct BCState *bcs)
{
 struct IsdnCardState *cs = bcs->cs;
 int more, count;
 int fifo_size = 32;
 u_char *ptr;

 if ((cs->debug & L1_DEB_HSCX) && !(cs->debug & L1_DEB_HSCX_FIFO))
  debugl1(cs, "jade_fill_fifo");

 if (!bcs->tx_skb)
  return;
 if (bcs->tx_skb->len <= 0)
  return;

 more = (bcs->mode == L1_MODE_TRANS) ? 1 : 0;
 if (bcs->tx_skb->len > fifo_size) {
  more = !0;
  count = fifo_size;
 } else
  count = bcs->tx_skb->len;

 waitforXFW(cs, bcs->hw.hscx.hscx);
 ptr = bcs->tx_skb->data;
 skb_pull(bcs->tx_skb, count);
 bcs->tx_cnt -= count;
 bcs->hw.hscx.count += count;
 WRITEJADEFIFO(cs, bcs->hw.hscx.hscx, ptr, count);
 WriteJADECMDR(cs, bcs->hw.hscx.hscx, jade_HDLC_XCMD, more ? jadeXCMD_XF : (jadeXCMD_XF|jadeXCMD_XME));
 if (cs->debug & L1_DEB_HSCX_FIFO) {
  char *t = bcs->blog;

  t += sprintf(t, "jade_fill_fifo %c cnt %d",
        bcs->hw.hscx.hscx ? 'B' : 'A', count);
  QuickHex(t, ptr, count);
  debugl1(cs, bcs->blog);
 }
}
