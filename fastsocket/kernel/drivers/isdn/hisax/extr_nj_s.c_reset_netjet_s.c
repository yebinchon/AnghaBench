
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctrl_reg; int auxd; scalar_t__ auxa; scalar_t__ base; scalar_t__ dmactrl; } ;
struct TYPE_4__ {TYPE_1__ njet; } ;
struct IsdnCardState {TYPE_2__ hw; scalar_t__ subtyp; } ;


 scalar_t__ NETJET_AUXCTRL ;
 scalar_t__ NETJET_CTRL ;
 scalar_t__ NETJET_IRQMASK1 ;
 int NETJET_ISACIRQ ;
 int byteout (scalar_t__,int) ;
 int mdelay (int) ;

__attribute__((used)) static void
reset_netjet_s(struct IsdnCardState *cs)
{
 cs->hw.njet.ctrl_reg = 0xff;
 byteout(cs->hw.njet.base + NETJET_CTRL, cs->hw.njet.ctrl_reg);
 mdelay(10);


 if (cs->subtyp)
  cs->hw.njet.ctrl_reg = 0x40;
 else
  cs->hw.njet.ctrl_reg = 0x00;
 byteout(cs->hw.njet.base + NETJET_CTRL, cs->hw.njet.ctrl_reg);
 mdelay(10);
 cs->hw.njet.auxd = 0;
 cs->hw.njet.dmactrl = 0;
 byteout(cs->hw.njet.base + NETJET_AUXCTRL, ~NETJET_ISACIRQ);
 byteout(cs->hw.njet.base + NETJET_IRQMASK1, NETJET_ISACIRQ);
 byteout(cs->hw.njet.auxa, cs->hw.njet.auxd);
}
