
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;
struct IsdnCardState {int (* BC_Read_Reg ) (struct IsdnCardState*,int ,int ) ;int debug; int lock; } ;
typedef int irqreturn_t ;


 int HFCD_ANYINT ;
 int HFCD_BUSY_NBUSY ;
 int HFCD_DATA ;
 int HFCD_INT_S1 ;
 int HFCD_STAT ;
 int IRQ_HANDLED ;
 int L1_DEB_ISAC ;
 int debugl1 (struct IsdnCardState*,char*,int,...) ;
 int hfc2bds0_interrupt (struct IsdnCardState*,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (struct IsdnCardState*,int ,int ) ;
 int stub2 (struct IsdnCardState*,int ,int ) ;

__attribute__((used)) static irqreturn_t
hfcs_interrupt(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 u_char val, stat;
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);
 if ((HFCD_ANYINT | HFCD_BUSY_NBUSY) &
  (stat = cs->BC_Read_Reg(cs, HFCD_DATA, HFCD_STAT))) {
  val = cs->BC_Read_Reg(cs, HFCD_DATA, HFCD_INT_S1);
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "HFCS: stat(%02x) s1(%02x)", stat, val);
  hfc2bds0_interrupt(cs, val);
 } else {
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "HFCS: irq_no_irq stat(%02x)", stat);
 }
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
