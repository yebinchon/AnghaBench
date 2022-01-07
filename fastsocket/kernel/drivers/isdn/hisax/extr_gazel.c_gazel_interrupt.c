
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef scalar_t__ u_char ;
struct IsdnCardState {int lock; } ;
typedef int irqreturn_t ;


 int HSCX_ISTA ;
 int HSCX_MASK ;
 int IRQ_HANDLED ;
 int ISAC_ISTA ;
 int ISAC_MASK ;
 int MAXCOUNT ;
 scalar_t__ ReadHSCX (struct IsdnCardState*,int,int ) ;
 scalar_t__ ReadISAC (struct IsdnCardState*,int ) ;
 int WriteHSCX (struct IsdnCardState*,int,int ,int) ;
 int WriteISAC (struct IsdnCardState*,int ,int) ;
 int hscx_int_main (struct IsdnCardState*,scalar_t__) ;
 int isac_interrupt (struct IsdnCardState*,scalar_t__) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static irqreturn_t
gazel_interrupt(int intno, void *dev_id)
{

 struct IsdnCardState *cs = dev_id;
 u_char valisac, valhscx;
 int count = 0;
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);
 do {
  valhscx = ReadHSCX(cs, 1, HSCX_ISTA);
  if (valhscx)
   hscx_int_main(cs, valhscx);
  valisac = ReadISAC(cs, ISAC_ISTA);
  if (valisac)
   isac_interrupt(cs, valisac);
  count++;
 } while ((valhscx || valisac) && (count < 5));

 WriteHSCX(cs, 0, HSCX_MASK, 0xFF);
 WriteHSCX(cs, 1, HSCX_MASK, 0xFF);
 WriteISAC(cs, ISAC_MASK, 0xFF);
 WriteISAC(cs, ISAC_MASK, 0x0);
 WriteHSCX(cs, 0, HSCX_MASK, 0x0);
 WriteHSCX(cs, 1, HSCX_MASK, 0x0);
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
