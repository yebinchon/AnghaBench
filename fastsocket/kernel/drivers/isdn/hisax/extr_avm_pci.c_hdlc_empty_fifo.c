
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_7__ {scalar_t__ isac; scalar_t__ cfg_reg; } ;
struct TYPE_8__ {TYPE_3__ avm; } ;
struct IsdnCardState {int debug; scalar_t__ subtyp; TYPE_4__ hw; } ;
struct TYPE_5__ {scalar_t__ rcvidx; int * rcvbuf; } ;
struct TYPE_6__ {TYPE_1__ hdlc; } ;
struct BCState {char* blog; scalar_t__ channel; TYPE_2__ hw; struct IsdnCardState* cs; } ;


 scalar_t__ AVM_FRITZ_PCI ;
 scalar_t__ AVM_FRITZ_PNP ;
 int AVM_HDLC_1 ;
 int AVM_HDLC_2 ;
 scalar_t__ HSCX_BUFMAX ;
 int L1_DEB_HSCX ;
 int L1_DEB_HSCX_FIFO ;
 int L1_DEB_WARN ;
 int QuickHex (char*,int *,int) ;
 scalar_t__ _IO_BASE ;
 int debugl1 (struct IsdnCardState*,char*,...) ;
 int in_be32 (unsigned int*) ;
 int inb (scalar_t__) ;
 int inl (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int sprintf (char*,char*,char,int) ;

__attribute__((used)) static inline void
hdlc_empty_fifo(struct BCState *bcs, int count)
{
 register u_int *ptr;
 u_char *p;
 u_char idx = bcs->channel ? AVM_HDLC_2 : AVM_HDLC_1;
 int cnt=0;
 struct IsdnCardState *cs = bcs->cs;

 if ((cs->debug & L1_DEB_HSCX) && !(cs->debug & L1_DEB_HSCX_FIFO))
  debugl1(cs, "hdlc_empty_fifo %d", count);
 if (bcs->hw.hdlc.rcvidx + count > HSCX_BUFMAX) {
  if (cs->debug & L1_DEB_WARN)
   debugl1(cs, "hdlc_empty_fifo: incoming packet too large");
  return;
 }
 p = bcs->hw.hdlc.rcvbuf + bcs->hw.hdlc.rcvidx;
 ptr = (u_int *)p;
 bcs->hw.hdlc.rcvidx += count;
 if (cs->subtyp == AVM_FRITZ_PCI) {
  outl(idx, cs->hw.avm.cfg_reg + 4);
  while (cnt < count) {



   *ptr++ = inl(cs->hw.avm.isac);

   cnt += 4;
  }
 } else {
  outb(idx, cs->hw.avm.cfg_reg + 4);
  while (cnt < count) {
   *p++ = inb(cs->hw.avm.isac);
   cnt++;
  }
 }
 if (cs->debug & L1_DEB_HSCX_FIFO) {
  char *t = bcs->blog;

  if (cs->subtyp == AVM_FRITZ_PNP)
   p = (u_char *) ptr;
  t += sprintf(t, "hdlc_empty_fifo %c cnt %d",
        bcs->channel ? 'B' : 'A', count);
  QuickHex(t, p, count);
  debugl1(cs, bcs->blog);
 }
}
