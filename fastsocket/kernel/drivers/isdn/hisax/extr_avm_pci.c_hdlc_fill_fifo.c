
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_12__ {scalar_t__ isac; } ;
struct TYPE_13__ {TYPE_5__ avm; } ;
struct IsdnCardState {int debug; scalar_t__ subtyp; TYPE_6__ hw; } ;
struct TYPE_8__ {int xml; int cmd; } ;
struct TYPE_9__ {TYPE_1__ sr; } ;
struct TYPE_10__ {int count; TYPE_2__ ctrl; } ;
struct TYPE_11__ {TYPE_3__ hdlc; } ;
struct BCState {scalar_t__ mode; int tx_cnt; char* blog; scalar_t__ channel; TYPE_4__ hw; TYPE_7__* tx_skb; struct IsdnCardState* cs; } ;
struct TYPE_14__ {int len; int * data; } ;


 scalar_t__ AVM_FRITZ_PCI ;
 scalar_t__ AVM_FRITZ_PNP ;
 int HDLC_CMD_XME ;
 int L1_DEB_HSCX ;
 int L1_DEB_HSCX_FIFO ;
 scalar_t__ L1_MODE_TRANS ;
 int QuickHex (char*,int *,int) ;
 scalar_t__ _IO_BASE ;
 int debugl1 (struct IsdnCardState*,char*,...) ;
 int out_be32 (unsigned int*,int ) ;
 int outb (int ,scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int skb_pull (TYPE_7__*,int) ;
 int sprintf (char*,char*,char,int) ;
 int write_ctrl (struct BCState*,int) ;

__attribute__((used)) static inline void
hdlc_fill_fifo(struct BCState *bcs)
{
 struct IsdnCardState *cs = bcs->cs;
 int count, cnt =0;
 int fifo_size = 32;
 u_char *p;
 u_int *ptr;

 if ((cs->debug & L1_DEB_HSCX) && !(cs->debug & L1_DEB_HSCX_FIFO))
  debugl1(cs, "hdlc_fill_fifo");
 if (!bcs->tx_skb)
  return;
 if (bcs->tx_skb->len <= 0)
  return;

 bcs->hw.hdlc.ctrl.sr.cmd &= ~HDLC_CMD_XME;
 if (bcs->tx_skb->len > fifo_size) {
  count = fifo_size;
 } else {
  count = bcs->tx_skb->len;
  if (bcs->mode != L1_MODE_TRANS)
   bcs->hw.hdlc.ctrl.sr.cmd |= HDLC_CMD_XME;
 }
 if ((cs->debug & L1_DEB_HSCX) && !(cs->debug & L1_DEB_HSCX_FIFO))
  debugl1(cs, "hdlc_fill_fifo %d/%ld", count, bcs->tx_skb->len);
 p = bcs->tx_skb->data;
 ptr = (u_int *)p;
 skb_pull(bcs->tx_skb, count);
 bcs->tx_cnt -= count;
 bcs->hw.hdlc.count += count;
 bcs->hw.hdlc.ctrl.sr.xml = ((count == fifo_size) ? 0 : count);
 write_ctrl(bcs, 3);
 if (cs->subtyp == AVM_FRITZ_PCI) {
  while (cnt<count) {



   outl(*ptr++, cs->hw.avm.isac);

   cnt += 4;
  }
 } else {
  while (cnt<count) {
   outb(*p++, cs->hw.avm.isac);
   cnt++;
  }
 }
 if (cs->debug & L1_DEB_HSCX_FIFO) {
  char *t = bcs->blog;

  if (cs->subtyp == AVM_FRITZ_PNP)
   p = (u_char *) ptr;
  t += sprintf(t, "hdlc_fill_fifo %c cnt %d",
        bcs->channel ? 'B' : 'A', count);
  QuickHex(t, p, count);
  debugl1(cs, bcs->blog);
 }
}
