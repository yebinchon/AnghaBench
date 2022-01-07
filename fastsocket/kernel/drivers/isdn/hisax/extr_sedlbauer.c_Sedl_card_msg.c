
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int reset_off; int cfg_reg; int hscx; int adr; int chip; int bus; int isac; } ;
struct TYPE_4__ {TYPE_1__ sedl; } ;
struct IsdnCardState {int lock; TYPE_2__ hw; int subtyp; int (* writeisac ) (struct IsdnCardState*,int ,int) ;} ;






 int ISAC_CMDR ;
 int ISAC_MASK ;
 int ISAR_IRQBIT ;


 int SEDL_BUS_PCI ;
 int SEDL_CHIP_ISAC_ISAR ;
 int SEDL_ISAR_PCI_LED1 ;
 int SEDL_ISAR_PCI_LED2 ;
 int SEDL_SPEEDFAX_PYRAMID ;
 int byteout (int ,int) ;
 int clear_pending_isac_ints (struct IsdnCardState*) ;
 int inithscxisac (struct IsdnCardState*,int) ;
 int initisac (struct IsdnCardState*) ;
 int initisar (struct IsdnCardState*) ;
 int release_io_sedlbauer (struct IsdnCardState*) ;
 int reset_sedlbauer (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (struct IsdnCardState*,int ,int) ;
 int stub2 (struct IsdnCardState*,int ,int) ;
 int writereg (int ,int ,int ,int) ;

__attribute__((used)) static int
Sedl_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 switch (mt) {
  case 131:
   spin_lock_irqsave(&cs->lock, flags);
   reset_sedlbauer(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 132:
   if (cs->hw.sedl.bus == SEDL_BUS_PCI)

    byteout(cs->hw.sedl.cfg_reg+ 5, 0);
   if (cs->hw.sedl.chip == SEDL_CHIP_ISAC_ISAR) {
    spin_lock_irqsave(&cs->lock, flags);
    writereg(cs->hw.sedl.adr, cs->hw.sedl.hscx,
     ISAR_IRQBIT, 0);
    writereg(cs->hw.sedl.adr, cs->hw.sedl.isac,
     ISAC_MASK, 0xFF);
    reset_sedlbauer(cs);
    writereg(cs->hw.sedl.adr, cs->hw.sedl.hscx,
     ISAR_IRQBIT, 0);
    writereg(cs->hw.sedl.adr, cs->hw.sedl.isac,
     ISAC_MASK, 0xFF);
    spin_unlock_irqrestore(&cs->lock, flags);
   }
   release_io_sedlbauer(cs);
   return(0);
  case 133:
   spin_lock_irqsave(&cs->lock, flags);
   if (cs->hw.sedl.bus == SEDL_BUS_PCI)

    byteout(cs->hw.sedl.cfg_reg+ 5, 0x02);
   reset_sedlbauer(cs);
   if (cs->hw.sedl.chip == SEDL_CHIP_ISAC_ISAR) {
    clear_pending_isac_ints(cs);
    writereg(cs->hw.sedl.adr, cs->hw.sedl.hscx,
     ISAR_IRQBIT, 0);
    initisac(cs);
    initisar(cs);

    cs->writeisac(cs, ISAC_MASK, 0);

    cs->writeisac(cs, ISAC_CMDR, 0x41);
   } else {
    inithscxisac(cs, 3);
   }
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 130:
   return(0);
  case 129:
   if (cs->subtyp != SEDL_SPEEDFAX_PYRAMID)
    return(0);
   spin_lock_irqsave(&cs->lock, flags);
   if ((long) arg)
    cs->hw.sedl.reset_off &= ~SEDL_ISAR_PCI_LED2;
   else
    cs->hw.sedl.reset_off &= ~SEDL_ISAR_PCI_LED1;
   byteout(cs->hw.sedl.cfg_reg +3, cs->hw.sedl.reset_off);
   spin_unlock_irqrestore(&cs->lock, flags);
   break;
  case 128:
   if (cs->subtyp != SEDL_SPEEDFAX_PYRAMID)
    return(0);
   spin_lock_irqsave(&cs->lock, flags);
   if ((long) arg)
    cs->hw.sedl.reset_off |= SEDL_ISAR_PCI_LED2;
   else
    cs->hw.sedl.reset_off |= SEDL_ISAR_PCI_LED1;
   byteout(cs->hw.sedl.cfg_reg +3, cs->hw.sedl.reset_off);
   spin_unlock_irqrestore(&cs->lock, flags);
   break;
 }
 return(0);
}
