
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {int cfg_reg; } ;
struct TYPE_7__ {TYPE_1__ diva; } ;
struct IsdnCardState {int debug; TYPE_2__ hw; int HW_Flags; } ;
struct TYPE_8__ {int count; scalar_t__ hscx; } ;
struct TYPE_9__ {TYPE_3__ hscx; } ;
struct BCState {scalar_t__ mode; int tx_cnt; char* blog; TYPE_4__ hw; TYPE_5__* tx_skb; struct IsdnCardState* cs; } ;
struct TYPE_10__ {int len; int * data; } ;


 int HW_IPAC ;
 int L1_DEB_HSCX ;
 int L1_DEB_HSCX_FIFO ;
 scalar_t__ L1_MODE_TRANS ;
 int MemWriteHSCXCMDR (struct IsdnCardState*,scalar_t__,int) ;
 int MemwaitforXFW (struct IsdnCardState*,scalar_t__) ;
 int QuickHex (char*,int *,int) ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int memwritereg (int ,int,int ) ;
 int skb_pull (TYPE_5__*,int) ;
 int sprintf (char*,char*,char,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
Memhscx_fill_fifo(struct BCState *bcs)
{
 struct IsdnCardState *cs = bcs->cs;
 int more, count, cnt;
 int fifo_size = test_bit(HW_IPAC, &cs->HW_Flags)? 64: 32;
 u_char *ptr,*p;

 if ((cs->debug & L1_DEB_HSCX) && !(cs->debug & L1_DEB_HSCX_FIFO))
  debugl1(cs, "hscx_fill_fifo");

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
 cnt = count;
 MemwaitforXFW(cs, bcs->hw.hscx.hscx);
 p = ptr = bcs->tx_skb->data;
 skb_pull(bcs->tx_skb, count);
 bcs->tx_cnt -= count;
 bcs->hw.hscx.count += count;
 while(cnt--)
  memwritereg(cs->hw.diva.cfg_reg, bcs->hw.hscx.hscx ? 0x40 : 0,
   *p++);
 MemWriteHSCXCMDR(cs, bcs->hw.hscx.hscx, more ? 0x8 : 0xa);
 if (cs->debug & L1_DEB_HSCX_FIFO) {
  char *t = bcs->blog;

  t += sprintf(t, "hscx_fill_fifo %c cnt %d",
        bcs->hw.hscx.hscx ? 'B' : 'A', count);
  QuickHex(t, ptr, count);
  debugl1(cs, bcs->blog);
 }
}
