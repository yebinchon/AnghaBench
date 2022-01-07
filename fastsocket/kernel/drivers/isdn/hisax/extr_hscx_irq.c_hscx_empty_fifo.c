
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct IsdnCardState {int debug; } ;
struct TYPE_3__ {scalar_t__ rcvidx; scalar_t__ hscx; int * rcvbuf; } ;
struct TYPE_4__ {TYPE_1__ hscx; } ;
struct BCState {char* blog; TYPE_2__ hw; struct IsdnCardState* cs; } ;


 scalar_t__ HSCX_BUFMAX ;
 int L1_DEB_HSCX ;
 int L1_DEB_HSCX_FIFO ;
 int L1_DEB_WARN ;
 int QuickHex (char*,int *,int) ;
 int READHSCXFIFO (struct IsdnCardState*,scalar_t__,int *,int) ;
 int WriteHSCXCMDR (struct IsdnCardState*,scalar_t__,int) ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int sprintf (char*,char*,char,int) ;

__attribute__((used)) static void
hscx_empty_fifo(struct BCState *bcs, int count)
{
 u_char *ptr;
 struct IsdnCardState *cs = bcs->cs;

 if ((cs->debug & L1_DEB_HSCX) && !(cs->debug & L1_DEB_HSCX_FIFO))
  debugl1(cs, "hscx_empty_fifo");

 if (bcs->hw.hscx.rcvidx + count > HSCX_BUFMAX) {
  if (cs->debug & L1_DEB_WARN)
   debugl1(cs, "hscx_empty_fifo: incoming packet too large");
  WriteHSCXCMDR(cs, bcs->hw.hscx.hscx, 0x80);
  bcs->hw.hscx.rcvidx = 0;
  return;
 }
 ptr = bcs->hw.hscx.rcvbuf + bcs->hw.hscx.rcvidx;
 bcs->hw.hscx.rcvidx += count;
 READHSCXFIFO(cs, bcs->hw.hscx.hscx, ptr, count);
 WriteHSCXCMDR(cs, bcs->hw.hscx.hscx, 0x80);
 if (cs->debug & L1_DEB_HSCX_FIFO) {
  char *t = bcs->blog;

  t += sprintf(t, "hscx_empty_fifo %c cnt %d",
        bcs->hw.hscx.hscx ? 'B' : 'A', count);
  QuickHex(t, ptr, count);
  debugl1(cs, bcs->blog);
 }
}
