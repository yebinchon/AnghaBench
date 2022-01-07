
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct TYPE_3__ {scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {int lock; TYPE_2__ hw; } ;
typedef int irqreturn_t ;


 int AVM_STATUS0_IRQ_HDLC ;
 int AVM_STATUS0_IRQ_ISAC ;
 int AVM_STATUS0_IRQ_MASK ;
 int HDLC_irq_main (struct IsdnCardState*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISAC_ISTA ;
 int ISAC_MASK ;
 int ReadISAC (struct IsdnCardState*,int ) ;
 int WriteISAC (struct IsdnCardState*,int ,int) ;
 int inb (scalar_t__) ;
 int isac_interrupt (struct IsdnCardState*,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static irqreturn_t
avm_pcipnp_interrupt(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 u_long flags;
 u_char val;
 u_char sval;

 spin_lock_irqsave(&cs->lock, flags);
 sval = inb(cs->hw.avm.cfg_reg + 2);
 if ((sval & AVM_STATUS0_IRQ_MASK) == AVM_STATUS0_IRQ_MASK) {

  spin_unlock_irqrestore(&cs->lock, flags);
  return IRQ_NONE;
 }
 if (!(sval & AVM_STATUS0_IRQ_ISAC)) {
  val = ReadISAC(cs, ISAC_ISTA);
  isac_interrupt(cs, val);
 }
 if (!(sval & AVM_STATUS0_IRQ_HDLC)) {
  HDLC_irq_main(cs);
 }
 WriteISAC(cs, ISAC_MASK, 0xFF);
 WriteISAC(cs, ISAC_MASK, 0x0);
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
