
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct TYPE_3__ {int last_is0; int irqstat0; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ njet; } ;
struct IsdnCardState {int debug; int lock; int HW_Flags; TYPE_2__ hw; } ;
typedef int irqreturn_t ;


 int FLG_LOCK_ATOMIC ;
 int ICC_ISTA ;
 int ICC_MASK ;
 int IRQ_HANDLED ;
 int L1_DEB_ISAC ;
 scalar_t__ NETJET_DMA_READ_ADR ;
 scalar_t__ NETJET_DMA_READ_IRQ ;
 scalar_t__ NETJET_DMA_WRITE_ADR ;
 scalar_t__ NETJET_DMA_WRITE_IRQ ;
 int NETJET_IRQM0_READ ;
 int NETJET_IRQM0_WRITE ;
 scalar_t__ NETJET_IRQSTAT1 ;
 int NETJET_ISACIRQ ;
 int NETjet_ReadIC (struct IsdnCardState*,int ) ;
 int NETjet_WriteIC (struct IsdnCardState*,int ,int) ;
 int bytein (scalar_t__) ;
 int debugl1 (struct IsdnCardState*,char*,int,int) ;
 int icc_interrupt (struct IsdnCardState*,int) ;
 scalar_t__ inl (scalar_t__) ;
 int read_tiger (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int write_tiger (struct IsdnCardState*) ;

__attribute__((used)) static irqreturn_t
netjet_u_interrupt(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 u_char val, sval;
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);
 if (!((sval = bytein(cs->hw.njet.base + NETJET_IRQSTAT1)) &
  NETJET_ISACIRQ)) {
  val = NETjet_ReadIC(cs, ICC_ISTA);
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "tiger: i1 %x %x", sval, val);
  if (val) {
   icc_interrupt(cs, val);
   NETjet_WriteIC(cs, ICC_MASK, 0xFF);
   NETjet_WriteIC(cs, ICC_MASK, 0x0);
  }
 }


 if (inl(cs->hw.njet.base + NETJET_DMA_WRITE_ADR) <
  inl(cs->hw.njet.base + NETJET_DMA_WRITE_IRQ))

  sval = 0x08;
 else
  sval = 0x04;
 if (inl(cs->hw.njet.base + NETJET_DMA_READ_ADR) <
  inl(cs->hw.njet.base + NETJET_DMA_READ_IRQ))

  sval = sval | 0x02;
 else
  sval = sval | 0x01;
 if (sval != cs->hw.njet.last_is0)
 {
  if (test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
   spin_unlock_irqrestore(&cs->lock, flags);
   return IRQ_HANDLED;
  }
  cs->hw.njet.irqstat0 = sval;
  if ((cs->hw.njet.irqstat0 & NETJET_IRQM0_READ) !=
   (cs->hw.njet.last_is0 & NETJET_IRQM0_READ))

   read_tiger(cs);
  if ((cs->hw.njet.irqstat0 & NETJET_IRQM0_WRITE) !=
   (cs->hw.njet.last_is0 & NETJET_IRQM0_WRITE))

   write_tiger(cs);

  test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
 }
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
