
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_7__ {int auxd; scalar_t__ base; } ;
struct TYPE_8__ {TYPE_3__ njet; } ;
struct TYPE_5__ {unsigned char lmr1; int (* ph_command ) (struct IsdnCardState*,unsigned char,char*) ;} ;
struct TYPE_6__ {TYPE_1__ amd7930; } ;
struct IsdnCardState {int debug; TYPE_4__ hw; TYPE_2__ dc; int lock; } ;


 int Amd7930_init (struct IsdnCardState*) ;




 int L1_DEB_ISAC ;




 scalar_t__ NETJET_AUXDATA ;
 int TJ_AMD_IRQ ;
 int debugl1 (struct IsdnCardState*,char*,unsigned char) ;
 int inittiger (struct IsdnCardState*) ;
 int outb (int,scalar_t__) ;
 int release_io_netjet (struct IsdnCardState*) ;
 int reset_enpci (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (struct IsdnCardState*,unsigned char,char*) ;
 int stub2 (struct IsdnCardState*,unsigned char,char*) ;

__attribute__((used)) static int
enpci_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;
        unsigned char *chan;

 if (cs->debug & L1_DEB_ISAC)
  debugl1(cs, "enter:now PCI: card_msg: 0x%04X", mt);

        switch (mt) {
  case 133:
   spin_lock_irqsave(&cs->lock, flags);
   reset_enpci(cs);
                        Amd7930_init(cs);
                        spin_unlock_irqrestore(&cs->lock, flags);
   break;
  case 134:
   release_io_netjet(cs);
   break;
  case 135:
   reset_enpci(cs);
   inittiger(cs);

   Amd7930_init(cs);
   break;
  case 132:
   break;
                case 131:

                        cs->hw.njet.auxd = TJ_AMD_IRQ << 1;
                        outb(cs->hw.njet.auxd, cs->hw.njet.base + NETJET_AUXDATA);
                        break;
                case 128:

                 cs->hw.njet.auxd = 0;
                        outb(0x00, cs->hw.njet.base + NETJET_AUXDATA);
                        break;
                case 130:

                        chan = (unsigned char *)arg;

                        if (cs->debug & L1_DEB_ISAC)
                  debugl1(cs, "enter:now PCI: assign phys. BC %d in AMD LMR1", *chan);

                        cs->dc.amd7930.ph_command(cs, (cs->dc.amd7930.lmr1 | (*chan + 1)), "MDL_BC_ASSIGN");

                        cs->hw.njet.auxd |= TJ_AMD_IRQ << 2;
                        outb(cs->hw.njet.auxd, cs->hw.njet.base + NETJET_AUXDATA);
                        break;
                case 129:

                        chan = (unsigned char *)arg;

                        if (cs->debug & L1_DEB_ISAC)
                  debugl1(cs, "enter:now PCI: release phys. BC %d in Amd LMR1", *chan);

                        cs->dc.amd7930.ph_command(cs, (cs->dc.amd7930.lmr1 & ~(*chan + 1)), "MDL_BC_RELEASE");

                        if (!(cs->dc.amd7930.lmr1 & 3)) {
                                cs->hw.njet.auxd &= ~(TJ_AMD_IRQ << 2);
                                outb(cs->hw.njet.auxd, cs->hw.njet.base + NETJET_AUXDATA);
                        }
                        break;
                default:
                        break;

 }
 return(0);
}
