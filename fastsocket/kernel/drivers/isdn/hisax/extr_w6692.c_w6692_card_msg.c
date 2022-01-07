
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iobase; } ;
struct TYPE_4__ {TYPE_1__ w6692; } ;
struct IsdnCardState {int (* writeW6692 ) (struct IsdnCardState*,int ,int) ;int subtyp; TYPE_2__ hw; } ;






 int W6692_USR ;
 int W_IMASK ;
 int W_XDATA ;
 int initW6692 (struct IsdnCardState*,int) ;
 int release_region (int ,int) ;
 int resetW6692 (struct IsdnCardState*) ;
 int stub1 (struct IsdnCardState*,int ,int) ;
 int stub2 (struct IsdnCardState*,int ,int) ;

__attribute__((used)) static int
w6692_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 switch (mt) {
  case 129:
   resetW6692(cs);
   return (0);
  case 130:
   cs->writeW6692(cs, W_IMASK, 0xff);
   release_region(cs->hw.w6692.iobase, 256);
   if (cs->subtyp == W6692_USR) {
    cs->writeW6692(cs, W_XDATA, 0x04);
   }
   return (0);
  case 131:
   initW6692(cs, 3);
   return (0);
  case 128:
   return (0);
 }
 return (0);
}
