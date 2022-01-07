
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct IsdnCardState {int lock; int debug; } ;






 int L1_DEB_IPAC ;
 int enable_bkm_int (struct IsdnCardState*,int) ;
 int inithscxisac (struct IsdnCardState*,int) ;
 int release_io_sct_quadro (struct IsdnCardState*) ;
 int reset_bkm (struct IsdnCardState*) ;
 int set_ipac_active (struct IsdnCardState*,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int
BKM_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 switch (mt) {
  case 129:
   spin_lock_irqsave(&cs->lock, flags);

   set_ipac_active(cs, 0);
   enable_bkm_int(cs, 0);
   reset_bkm(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   return (0);
  case 130:

   spin_lock_irqsave(&cs->lock, flags);
   set_ipac_active(cs, 0);
   enable_bkm_int(cs, 0);
   spin_unlock_irqrestore(&cs->lock, flags);
   release_io_sct_quadro(cs);
   return (0);
  case 131:
   spin_lock_irqsave(&cs->lock, flags);
   cs->debug |= L1_DEB_IPAC;
   set_ipac_active(cs, 1);
   inithscxisac(cs, 3);

   enable_bkm_int(cs, 1);
   spin_unlock_irqrestore(&cs->lock, flags);
   return (0);
  case 128:
   return (0);
 }
 return (0);
}
