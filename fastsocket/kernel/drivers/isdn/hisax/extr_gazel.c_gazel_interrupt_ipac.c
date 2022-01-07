
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;
struct IsdnCardState {int lock; } ;
typedef int irqreturn_t ;


 int HSCX_ISTA ;
 scalar_t__ IPAC_ISTA ;
 scalar_t__ IPAC_MASK ;
 int IRQ_HANDLED ;
 scalar_t__ ISAC_ISTA ;
 int MAXCOUNT ;
 int ReadHSCX (struct IsdnCardState*,int,int ) ;
 int ReadISAC (struct IsdnCardState*,scalar_t__) ;
 int WriteISAC (struct IsdnCardState*,scalar_t__,int) ;
 int hscx_int_main (struct IsdnCardState*,int) ;
 int isac_interrupt (struct IsdnCardState*,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static irqreturn_t
gazel_interrupt_ipac(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 u_char ista, val;
 int count = 0;
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);
 ista = ReadISAC(cs, IPAC_ISTA - 0x80);
 do {
  if (ista & 0x0f) {
   val = ReadHSCX(cs, 1, HSCX_ISTA);
   if (ista & 0x01)
    val |= 0x01;
   if (ista & 0x04)
    val |= 0x02;
   if (ista & 0x08)
    val |= 0x04;
   if (val) {
    hscx_int_main(cs, val);
   }
  }
  if (ista & 0x20) {
   val = 0xfe & ReadISAC(cs, ISAC_ISTA);
   if (val) {
    isac_interrupt(cs, val);
   }
  }
  if (ista & 0x10) {
   val = 0x01;
   isac_interrupt(cs, val);
  }
  ista = ReadISAC(cs, IPAC_ISTA - 0x80);
  count++;
 }
 while ((ista & 0x3f) && (count < MAXCOUNT));

 WriteISAC(cs, IPAC_MASK - 0x80, 0xFF);
 WriteISAC(cs, IPAC_MASK - 0x80, 0xC0);
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
