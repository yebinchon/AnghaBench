
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct IsdnCardState {int debug; int (* BC_Write_Reg ) (struct IsdnCardState*,int,int ,int) ;int (* BC_Read_Reg ) (struct IsdnCardState*,int,int ) ;} ;
struct TYPE_3__ {int hscx; scalar_t__ rcvidx; int* rcvbuf; } ;
struct TYPE_4__ {TYPE_1__ hscx; } ;
struct BCState {char* blog; TYPE_2__ hw; struct IsdnCardState* cs; } ;


 scalar_t__ HSCX_BUFMAX ;
 int IPACX_CMDRB ;
 int IPACX_RFIFOB ;
 int L1_DEB_HSCX ;
 int L1_DEB_HSCX_FIFO ;
 int L1_DEB_WARN ;
 int QuickHex (char*,int*,int) ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int sprintf (char*,char*,int,int) ;
 int stub1 (struct IsdnCardState*,int,int ,int) ;
 int stub2 (struct IsdnCardState*,int,int ) ;
 int stub3 (struct IsdnCardState*,int,int ,int) ;

__attribute__((used)) static void
bch_empty_fifo(struct BCState *bcs, int count)
{
 u_char *ptr, hscx;
 struct IsdnCardState *cs;
 int cnt;

 cs = bcs->cs;
  hscx = bcs->hw.hscx.hscx;
 if ((cs->debug &L1_DEB_HSCX) && !(cs->debug &L1_DEB_HSCX_FIFO))
  debugl1(cs, "bch_empty_fifo()");


 if (bcs->hw.hscx.rcvidx + count > HSCX_BUFMAX) {
  if (cs->debug &L1_DEB_WARN)
   debugl1(cs, "bch_empty_fifo() incoming packet too large");
   cs->BC_Write_Reg(cs, hscx, IPACX_CMDRB, 0x80);
  bcs->hw.hscx.rcvidx = 0;
  return;
 }

 ptr = bcs->hw.hscx.rcvbuf + bcs->hw.hscx.rcvidx;
 cnt = count;
 while (cnt--) *ptr++ = cs->BC_Read_Reg(cs, hscx, IPACX_RFIFOB);
 cs->BC_Write_Reg(cs, hscx, IPACX_CMDRB, 0x80);

 ptr = bcs->hw.hscx.rcvbuf + bcs->hw.hscx.rcvidx;
 bcs->hw.hscx.rcvidx += count;

 if (cs->debug &L1_DEB_HSCX_FIFO) {
  char *t = bcs->blog;

  t += sprintf(t, "bch_empty_fifo() B-%d cnt %d", hscx, count);
  QuickHex(t, ptr, count);
  debugl1(cs, bcs->blog);
 }
}
