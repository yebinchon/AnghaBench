
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {unsigned char last_is0; unsigned char irqstat0; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ njet; } ;
struct IsdnCardState {int lock; int HW_Flags; TYPE_2__ hw; } ;
typedef int irqreturn_t ;


 int Amd7930_interrupt (struct IsdnCardState*,unsigned char) ;
 int FLG_LOCK_ATOMIC ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ NETJET_DMA_READ_ADR ;
 scalar_t__ NETJET_DMA_READ_IRQ ;
 scalar_t__ NETJET_DMA_WRITE_ADR ;
 scalar_t__ NETJET_DMA_WRITE_IRQ ;
 int NETJET_IRQM0_READ ;
 int NETJET_IRQM0_WRITE ;
 scalar_t__ NETJET_IRQSTAT0 ;
 scalar_t__ NETJET_IRQSTAT1 ;
 unsigned char ReadByteAmd7930 (struct IsdnCardState*,int) ;
 unsigned char TJ_AMD_IRQ ;
 unsigned char inb (scalar_t__) ;
 scalar_t__ inl (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;
 int read_tiger (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int write_tiger (struct IsdnCardState*) ;

__attribute__((used)) static irqreturn_t
enpci_interrupt(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 unsigned char s0val, s1val, ir;
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);
 s1val = inb(cs->hw.njet.base + NETJET_IRQSTAT1);


 if (!(s1val & TJ_AMD_IRQ)) {

  ir = ReadByteAmd7930(cs, 0x00);
  Amd7930_interrupt(cs, ir);
  s1val = 1;
 } else
  s1val = 0;
 s0val = inb(cs->hw.njet.base + NETJET_IRQSTAT0);
 if ((s0val | s1val)==0) {
  spin_unlock_irqrestore(&cs->lock, flags);
  return IRQ_NONE;
 }
 if (s0val)
  outb(s0val, cs->hw.njet.base + NETJET_IRQSTAT0);



 if (inl(cs->hw.njet.base + NETJET_DMA_WRITE_ADR) <
  inl(cs->hw.njet.base + NETJET_DMA_WRITE_IRQ))

  s0val = 0x08;
 else
  s0val = 0x04;
 if (inl(cs->hw.njet.base + NETJET_DMA_READ_ADR) <
  inl(cs->hw.njet.base + NETJET_DMA_READ_IRQ))

  s0val = s0val | 0x02;
 else
  s0val = s0val | 0x01;
 if (s0val != cs->hw.njet.last_is0)
 {
  if (test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
   spin_unlock_irqrestore(&cs->lock, flags);
   return IRQ_HANDLED;
  }
  cs->hw.njet.irqstat0 = s0val;
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
