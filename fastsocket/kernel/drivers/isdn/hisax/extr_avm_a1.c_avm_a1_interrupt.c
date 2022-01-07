
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct TYPE_3__ {int * hscx; int isac; int cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {int debug; int lock; TYPE_2__ hw; } ;
typedef int irqreturn_t ;


 int AVM_A1_STAT_HSCX ;
 int AVM_A1_STAT_ISAC ;
 int AVM_A1_STAT_TIMER ;
 int HSCX_ISTA ;
 int HSCX_MASK ;
 int IRQ_HANDLED ;
 int ISAC_ISTA ;
 int ISAC_MASK ;
 int L1_DEB_INTSTAT ;
 int bytein (int ) ;
 int byteout (int ,int) ;
 int debugl1 (struct IsdnCardState*,char*,int) ;
 int hscx_int_main (struct IsdnCardState*,int) ;
 int isac_interrupt (struct IsdnCardState*,int) ;
 int readreg (int ,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int writereg (int ,int ,int) ;

__attribute__((used)) static irqreturn_t
avm_a1_interrupt(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 u_char val, sval;
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);
 while (((sval = bytein(cs->hw.avm.cfg_reg)) & 0xf) != 0x7) {
  if (!(sval & AVM_A1_STAT_TIMER)) {
   byteout(cs->hw.avm.cfg_reg, 0x1E);
   sval = bytein(cs->hw.avm.cfg_reg);
  } else if (cs->debug & L1_DEB_INTSTAT)
   debugl1(cs, "avm IntStatus %x", sval);
  if (!(sval & AVM_A1_STAT_HSCX)) {
   val = readreg(cs->hw.avm.hscx[1], HSCX_ISTA);
   if (val)
    hscx_int_main(cs, val);
  }
  if (!(sval & AVM_A1_STAT_ISAC)) {
   val = readreg(cs->hw.avm.isac, ISAC_ISTA);
   if (val)
    isac_interrupt(cs, val);
  }
 }
 writereg(cs->hw.avm.hscx[0], HSCX_MASK, 0xFF);
 writereg(cs->hw.avm.hscx[1], HSCX_MASK, 0xFF);
 writereg(cs->hw.avm.isac, ISAC_MASK, 0xFF);
 writereg(cs->hw.avm.isac, ISAC_MASK, 0x0);
 writereg(cs->hw.avm.hscx[0], HSCX_MASK, 0x0);
 writereg(cs->hw.avm.hscx[1], HSCX_MASK, 0x0);
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
