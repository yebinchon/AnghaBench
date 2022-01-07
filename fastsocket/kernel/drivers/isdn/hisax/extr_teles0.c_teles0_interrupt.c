
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ u_char ;
struct TYPE_3__ {int membase; } ;
struct TYPE_4__ {TYPE_1__ teles0; } ;
struct IsdnCardState {int debug; int lock; TYPE_2__ hw; } ;
typedef int irqreturn_t ;


 int HSCX_ISTA ;
 int HSCX_MASK ;
 int IRQ_HANDLED ;
 int ISAC_ISTA ;
 int ISAC_MASK ;
 int L1_DEB_HSCX ;
 int L1_DEB_ISAC ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int hscx_int_main (struct IsdnCardState*,scalar_t__) ;
 int isac_interrupt (struct IsdnCardState*,scalar_t__) ;
 scalar_t__ readhscx (int ,int,int ) ;
 scalar_t__ readisac (int ,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int writehscx (int ,int,int ,int) ;
 int writeisac (int ,int ,int) ;

__attribute__((used)) static irqreturn_t
teles0_interrupt(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 u_char val;
 u_long flags;
 int count = 0;

 spin_lock_irqsave(&cs->lock, flags);
 val = readhscx(cs->hw.teles0.membase, 1, HSCX_ISTA);
      Start_HSCX:
 if (val)
  hscx_int_main(cs, val);
 val = readisac(cs->hw.teles0.membase, ISAC_ISTA);
      Start_ISAC:
 if (val)
  isac_interrupt(cs, val);
 count++;
 val = readhscx(cs->hw.teles0.membase, 1, HSCX_ISTA);
 if (val && count < 5) {
  if (cs->debug & L1_DEB_HSCX)
   debugl1(cs, "HSCX IntStat after IntRoutine");
  goto Start_HSCX;
 }
 val = readisac(cs->hw.teles0.membase, ISAC_ISTA);
 if (val && count < 5) {
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "ISAC IntStat after IntRoutine");
  goto Start_ISAC;
 }
 writehscx(cs->hw.teles0.membase, 0, HSCX_MASK, 0xFF);
 writehscx(cs->hw.teles0.membase, 1, HSCX_MASK, 0xFF);
 writeisac(cs->hw.teles0.membase, ISAC_MASK, 0xFF);
 writeisac(cs->hw.teles0.membase, ISAC_MASK, 0x0);
 writehscx(cs->hw.teles0.membase, 0, HSCX_MASK, 0x0);
 writehscx(cs->hw.teles0.membase, 1, HSCX_MASK, 0x0);
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
