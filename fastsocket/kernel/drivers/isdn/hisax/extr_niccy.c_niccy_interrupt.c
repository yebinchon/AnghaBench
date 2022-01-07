
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ u_char ;
struct TYPE_3__ {int hscx; int hscx_ale; int isac; int isac_ale; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ niccy; } ;
struct IsdnCardState {scalar_t__ subtyp; int debug; int lock; TYPE_2__ hw; } ;
typedef int irqreturn_t ;


 scalar_t__ HSCX_ISTA ;
 scalar_t__ HSCX_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ ISAC_ISTA ;
 scalar_t__ ISAC_MASK ;
 int L1_DEB_HSCX ;
 int L1_DEB_ISAC ;
 scalar_t__ NICCY_PCI ;
 int PCI_IRQ_ASSERT ;
 scalar_t__ PCI_IRQ_CTRL_REG ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int hscx_int_main (struct IsdnCardState*,scalar_t__) ;
 int inl (scalar_t__) ;
 int isac_interrupt (struct IsdnCardState*,scalar_t__) ;
 int outl (int,scalar_t__) ;
 scalar_t__ readreg (int ,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int writereg (int ,int ,scalar_t__,int) ;

__attribute__((used)) static irqreturn_t niccy_interrupt(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 u_char val;
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);
 if (cs->subtyp == NICCY_PCI) {
  int ival;
  ival = inl(cs->hw.niccy.cfg_reg + PCI_IRQ_CTRL_REG);
  if (!(ival & PCI_IRQ_ASSERT)) {
   spin_unlock_irqrestore(&cs->lock, flags);
   return IRQ_NONE;
  }
  outl(ival, cs->hw.niccy.cfg_reg + PCI_IRQ_CTRL_REG);
 }
 val = readreg(cs->hw.niccy.hscx_ale, cs->hw.niccy.hscx,
   HSCX_ISTA + 0x40);
Start_HSCX:
 if (val)
  hscx_int_main(cs, val);
 val = readreg(cs->hw.niccy.isac_ale, cs->hw.niccy.isac, ISAC_ISTA);
Start_ISAC:
 if (val)
  isac_interrupt(cs, val);
 val = readreg(cs->hw.niccy.hscx_ale, cs->hw.niccy.hscx,
   HSCX_ISTA + 0x40);
 if (val) {
  if (cs->debug & L1_DEB_HSCX)
   debugl1(cs, "HSCX IntStat after IntRoutine");
  goto Start_HSCX;
 }
 val = readreg(cs->hw.niccy.isac_ale, cs->hw.niccy.isac, ISAC_ISTA);
 if (val) {
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "ISAC IntStat after IntRoutine");
  goto Start_ISAC;
 }
 writereg(cs->hw.niccy.hscx_ale, cs->hw.niccy.hscx, HSCX_MASK, 0xFF);
 writereg(cs->hw.niccy.hscx_ale, cs->hw.niccy.hscx, HSCX_MASK + 0x40,
   0xFF);
 writereg(cs->hw.niccy.isac_ale, cs->hw.niccy.isac, ISAC_MASK, 0xFF);
 writereg(cs->hw.niccy.isac_ale, cs->hw.niccy.isac, ISAC_MASK, 0);
 writereg(cs->hw.niccy.hscx_ale, cs->hw.niccy.hscx, HSCX_MASK, 0);
 writereg(cs->hw.niccy.hscx_ale, cs->hw.niccy.hscx, HSCX_MASK + 0x40,0);
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
