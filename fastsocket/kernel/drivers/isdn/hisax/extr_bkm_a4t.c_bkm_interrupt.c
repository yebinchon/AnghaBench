
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ u_char ;
struct TYPE_4__ {int isac_adr; int isac_ale; int jade_adr; int jade_ale; scalar_t__ base; } ;
struct TYPE_5__ {TYPE_1__ ax; } ;
struct IsdnCardState {int lock; TYPE_2__ hw; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int i20IntStatus; int i20IntCtrl; } ;
typedef TYPE_3__ I20_REGISTER_FILE ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ ISAC_ISTA ;
 int intISDN ;
 int isac_interrupt (struct IsdnCardState*,scalar_t__) ;
 scalar_t__ jade_HDLC_ISR ;
 int jade_int_main (struct IsdnCardState*,scalar_t__,int) ;
 scalar_t__ readreg (int ,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static irqreturn_t
bkm_interrupt(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 u_char val = 0;
 u_long flags;
 I20_REGISTER_FILE *pI20_Regs;

 spin_lock_irqsave(&cs->lock, flags);
 pI20_Regs = (I20_REGISTER_FILE *) (cs->hw.ax.base);


 if (pI20_Regs->i20IntStatus & intISDN) {

  pI20_Regs->i20IntStatus = intISDN;

  pI20_Regs->i20IntCtrl &= ~intISDN;

  val = readreg(cs->hw.ax.jade_ale, cs->hw.ax.jade_adr, jade_HDLC_ISR + 0x80);
  if (val) {
   jade_int_main(cs, val, 0);
  }

  val = readreg(cs->hw.ax.jade_ale, cs->hw.ax.jade_adr, jade_HDLC_ISR + 0xC0);
  if (val) {
   jade_int_main(cs, val, 1);
  }

  val = readreg(cs->hw.ax.isac_ale, cs->hw.ax.isac_adr, ISAC_ISTA);
  if (val) {
   isac_interrupt(cs, val);
  }

  pI20_Regs->i20IntCtrl |= intISDN;
  spin_unlock_irqrestore(&cs->lock, flags);
  return IRQ_HANDLED;
 } else {
  spin_unlock_irqrestore(&cs->lock, flags);
  return IRQ_NONE;
 }
}
