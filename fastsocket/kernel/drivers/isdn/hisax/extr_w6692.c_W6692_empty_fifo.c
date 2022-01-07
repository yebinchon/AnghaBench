
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {int debug; scalar_t__ rcvidx; char* dlog; int (* writeW6692 ) (struct IsdnCardState*,int ,int ) ;int (* readW6692fifo ) (struct IsdnCardState*,int *,int) ;int * rcvbuf; } ;


 int L1_DEB_ISAC ;
 int L1_DEB_ISAC_FIFO ;
 int L1_DEB_WARN ;
 scalar_t__ MAX_DFRAME_LEN_L1 ;
 int QuickHex (char*,int *,int) ;
 int W_D_CMDR ;
 int W_D_CMDR_RACK ;
 int debugl1 (struct IsdnCardState*,char*,...) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct IsdnCardState*,int ,int ) ;
 int stub2 (struct IsdnCardState*,int *,int) ;
 int stub3 (struct IsdnCardState*,int ,int ) ;

__attribute__((used)) static void
W6692_empty_fifo(struct IsdnCardState *cs, int count)
{
 u_char *ptr;

 if ((cs->debug & L1_DEB_ISAC) && !(cs->debug & L1_DEB_ISAC_FIFO))
  debugl1(cs, "W6692_empty_fifo");

 if ((cs->rcvidx + count) >= MAX_DFRAME_LEN_L1) {
  if (cs->debug & L1_DEB_WARN)
   debugl1(cs, "W6692_empty_fifo overrun %d",
    cs->rcvidx + count);
  cs->writeW6692(cs, W_D_CMDR, W_D_CMDR_RACK);
  cs->rcvidx = 0;
  return;
 }
 ptr = cs->rcvbuf + cs->rcvidx;
 cs->rcvidx += count;
 cs->readW6692fifo(cs, ptr, count);
 cs->writeW6692(cs, W_D_CMDR, W_D_CMDR_RACK);
 if (cs->debug & L1_DEB_ISAC_FIFO) {
  char *t = cs->dlog;

  t += sprintf(t, "W6692_empty_fifo cnt %d", count);
  QuickHex(t, ptr, count);
  debugl1(cs, cs->dlog);
 }
}
