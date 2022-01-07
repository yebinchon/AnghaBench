
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct TYPE_3__ {scalar_t__ membase; } ;
struct TYPE_4__ {TYPE_1__ teles0; } ;
struct IsdnCardState {int lock; TYPE_2__ hw; } ;
typedef int irqreturn_t ;


 int HSCX_ISTA ;
 int HSCX_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISAC_ISTA ;
 int ISAC_MASK ;
 int hscx_int_main (struct IsdnCardState*,int) ;
 int isac_interrupt (struct IsdnCardState*,int) ;
 int readhscx (scalar_t__,int,int ) ;
 int readisac (scalar_t__,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int writehscx (scalar_t__,int,int ,int) ;
 int writeisac (scalar_t__,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t
telespci_interrupt(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 u_char hval, ival;
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);
 hval = readhscx(cs->hw.teles0.membase, 1, HSCX_ISTA);
 if (hval)
  hscx_int_main(cs, hval);
 ival = readisac(cs->hw.teles0.membase, ISAC_ISTA);
 if ((hval | ival) == 0) {
  spin_unlock_irqrestore(&cs->lock, flags);
  return IRQ_NONE;
 }
 if (ival)
  isac_interrupt(cs, ival);

 writel(0x70000000, cs->hw.teles0.membase + 0x3C);

 writehscx(cs->hw.teles0.membase, 0, HSCX_MASK, 0xFF);
 writehscx(cs->hw.teles0.membase, 1, HSCX_MASK, 0xFF);
 writeisac(cs->hw.teles0.membase, ISAC_MASK, 0xFF);
 writeisac(cs->hw.teles0.membase, ISAC_MASK, 0x0);
 writehscx(cs->hw.teles0.membase, 0, HSCX_MASK, 0x0);
 writehscx(cs->hw.teles0.membase, 1, HSCX_MASK, 0x0);
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
