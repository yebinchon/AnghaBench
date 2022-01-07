
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctrl_reg; int auxd; scalar_t__ auxa; scalar_t__ base; scalar_t__ dmactrl; } ;
struct TYPE_4__ {TYPE_1__ njet; } ;
struct IsdnCardState {int debug; TYPE_2__ hw; } ;


 int L1_DEB_ISAC ;
 scalar_t__ NETJET_AUXCTRL ;
 scalar_t__ NETJET_CTRL ;
 scalar_t__ NETJET_IRQMASK1 ;
 int TJ_AMD_IRQ ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int mdelay (int) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void
reset_enpci(struct IsdnCardState *cs)
{
 if (cs->debug & L1_DEB_ISAC)
  debugl1(cs, "enter:now PCI: reset");


 cs->hw.njet.ctrl_reg = 0x07;
 outb(cs->hw.njet.ctrl_reg, cs->hw.njet.base + NETJET_CTRL);
 mdelay(20);

 cs->hw.njet.ctrl_reg = 0x30;
 outb(cs->hw.njet.ctrl_reg, cs->hw.njet.base + NETJET_CTRL);

 mdelay(20);
 cs->hw.njet.auxd = 0;
 cs->hw.njet.dmactrl = 0;
 outb(~TJ_AMD_IRQ, cs->hw.njet.base + NETJET_AUXCTRL);
 outb(TJ_AMD_IRQ, cs->hw.njet.base + NETJET_IRQMASK1);
 outb(cs->hw.njet.auxd, cs->hw.njet.auxa);
}
