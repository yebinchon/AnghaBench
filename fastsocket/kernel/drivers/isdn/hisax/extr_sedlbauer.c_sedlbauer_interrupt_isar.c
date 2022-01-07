
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct TYPE_3__ {int hscx; int adr; int isac; } ;
struct TYPE_4__ {TYPE_1__ sedl; } ;
struct IsdnCardState {int debug; int lock; TYPE_2__ hw; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ISAC_ISTA ;
 int ISAC_MASK ;
 int ISAR_IRQBIT ;
 int ISAR_IRQMSK ;
 int ISAR_IRQSTA ;
 int L1_DEB_HSCX ;
 int L1_DEB_ISAC ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int isac_interrupt (struct IsdnCardState*,int) ;
 int isar_int_main (struct IsdnCardState*) ;
 int readreg (int ,int ,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int writereg (int ,int ,int ,int) ;

__attribute__((used)) static irqreturn_t
sedlbauer_interrupt_isar(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 u_char val;
 int cnt = 5;
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);
 val = readreg(cs->hw.sedl.adr, cs->hw.sedl.hscx, ISAR_IRQBIT);
      Start_ISAR:
 if (val & ISAR_IRQSTA)
  isar_int_main(cs);
 val = readreg(cs->hw.sedl.adr, cs->hw.sedl.isac, ISAC_ISTA);
      Start_ISAC:
 if (val)
  isac_interrupt(cs, val);
 val = readreg(cs->hw.sedl.adr, cs->hw.sedl.hscx, ISAR_IRQBIT);
 if ((val & ISAR_IRQSTA) && --cnt) {
  if (cs->debug & L1_DEB_HSCX)
   debugl1(cs, "ISAR IntStat after IntRoutine");
  goto Start_ISAR;
 }
 val = readreg(cs->hw.sedl.adr, cs->hw.sedl.isac, ISAC_ISTA);
 if (val && --cnt) {
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "ISAC IntStat after IntRoutine");
  goto Start_ISAC;
 }
 if (!cnt)
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "Sedlbauer IRQ LOOP");

 writereg(cs->hw.sedl.adr, cs->hw.sedl.hscx, ISAR_IRQBIT, 0);
 writereg(cs->hw.sedl.adr, cs->hw.sedl.isac, ISAC_MASK, 0xFF);
 writereg(cs->hw.sedl.adr, cs->hw.sedl.isac, ISAC_MASK, 0x0);
 writereg(cs->hw.sedl.adr, cs->hw.sedl.hscx, ISAR_IRQBIT, ISAR_IRQMSK);
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
