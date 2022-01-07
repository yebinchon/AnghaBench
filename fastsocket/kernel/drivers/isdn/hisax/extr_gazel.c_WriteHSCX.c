
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct TYPE_3__ {int ipac; int * hscx; } ;
struct TYPE_4__ {TYPE_1__ gazel; } ;
struct IsdnCardState {int subtyp; TYPE_2__ hw; } ;






 int writereg (int ,int,int) ;
 int writereg_ipac (int ,int ,int) ;

__attribute__((used)) static void
WriteHSCX(struct IsdnCardState *cs, int hscx, u_char offset, u_char value)
{
 u_short off2 = offset;

 switch (cs->subtyp) {
  case 131:
   off2 = ((off2 << 8 & 0xf000) | (off2 & 0xf));
  case 130:
   writereg(cs->hw.gazel.hscx[hscx], off2, value);
   break;
  case 128:
  case 129:
   writereg_ipac(cs->hw.gazel.ipac, hscx * 0x40 + off2, value);
   break;
 }
}
