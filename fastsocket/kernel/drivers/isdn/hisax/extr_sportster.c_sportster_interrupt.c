
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ u_char ;
struct TYPE_3__ {scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ spt; } ;
struct IsdnCardState {int debug; int lock; TYPE_2__ hw; } ;
typedef int irqreturn_t ;


 int HSCX_ISTA ;
 int IRQ_HANDLED ;
 int ISAC_ISTA ;
 int L1_DEB_HSCX ;
 int L1_DEB_ISAC ;
 scalar_t__ READHSCX (struct IsdnCardState*,int,int ) ;
 scalar_t__ ReadISAC (struct IsdnCardState*,int ) ;
 scalar_t__ SPORTSTER_RES_IRQ ;
 int bytein (scalar_t__) ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int hscx_int_main (struct IsdnCardState*,scalar_t__) ;
 int isac_interrupt (struct IsdnCardState*,scalar_t__) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static irqreturn_t
sportster_interrupt(int intno, void *dev_id)
{
 struct IsdnCardState *cs = dev_id;
 u_char val;
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);
 val = READHSCX(cs, 1, HSCX_ISTA);
      Start_HSCX:
 if (val)
  hscx_int_main(cs, val);
 val = ReadISAC(cs, ISAC_ISTA);
      Start_ISAC:
 if (val)
  isac_interrupt(cs, val);
 val = READHSCX(cs, 1, HSCX_ISTA);
 if (val) {
  if (cs->debug & L1_DEB_HSCX)
   debugl1(cs, "HSCX IntStat after IntRoutine");
  goto Start_HSCX;
 }
 val = ReadISAC(cs, ISAC_ISTA);
 if (val) {
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "ISAC IntStat after IntRoutine");
  goto Start_ISAC;
 }

 bytein(cs->hw.spt.cfg_reg + SPORTSTER_RES_IRQ +1);
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
