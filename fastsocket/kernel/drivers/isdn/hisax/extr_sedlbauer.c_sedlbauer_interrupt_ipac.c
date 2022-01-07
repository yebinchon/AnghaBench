
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct TYPE_3__ {int isac; int adr; int hscx; } ;
struct TYPE_4__ {TYPE_1__ sedl; } ;
struct IsdnCardState {int debug; int lock; TYPE_2__ hw; } ;
typedef int irqreturn_t ;


 int HSCX_ISTA ;
 int IPAC_ISTA ;
 int IPAC_MASK ;
 int IRQ_HANDLED ;
 int ISAC_ISTA ;
 int L1_DEB_IPAC ;
 int L1_DEB_ISAC ;
 int debugl1 (struct IsdnCardState*,char*,...) ;
 int hscx_int_main (struct IsdnCardState*,int) ;
 int isac_interrupt (struct IsdnCardState*,int) ;
 int readreg (int ,int ,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int writereg (int ,int ,int ,int) ;

__attribute__((used)) static irqreturn_t
sedlbauer_interrupt_ipac(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 u_char ista, val, icnt = 5;
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);
 ista = readreg(cs->hw.sedl.adr, cs->hw.sedl.isac, IPAC_ISTA);
Start_IPAC:
 if (cs->debug & L1_DEB_IPAC)
  debugl1(cs, "IPAC ISTA %02X", ista);
 if (ista & 0x0f) {
  val = readreg(cs->hw.sedl.adr, cs->hw.sedl.hscx, HSCX_ISTA + 0x40);
  if (ista & 0x01)
   val |= 0x01;
  if (ista & 0x04)
   val |= 0x02;
  if (ista & 0x08)
   val |= 0x04;
  if (val)
   hscx_int_main(cs, val);
 }
 if (ista & 0x20) {
  val = 0xfe & readreg(cs->hw.sedl.adr, cs->hw.sedl.isac, ISAC_ISTA | 0x80);
  if (val) {
   isac_interrupt(cs, val);
  }
 }
 if (ista & 0x10) {
  val = 0x01;
  isac_interrupt(cs, val);
 }
 ista = readreg(cs->hw.sedl.adr, cs->hw.sedl.isac, IPAC_ISTA);
 if ((ista & 0x3f) && icnt) {
  icnt--;
  goto Start_IPAC;
 }
 if (!icnt)
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "Sedlbauer IRQ LOOP");
 writereg(cs->hw.sedl.adr, cs->hw.sedl.isac, IPAC_MASK, 0xFF);
 writereg(cs->hw.sedl.adr, cs->hw.sedl.isac, IPAC_MASK, 0xC0);
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
