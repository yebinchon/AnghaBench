
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct IsdnCardState {int lock; } ;






 int clear_pending_isac_ints (struct IsdnCardState*) ;
 int clear_pending_jade_ints (struct IsdnCardState*) ;
 int enable_bkm_int (struct IsdnCardState*,int) ;
 int initisac (struct IsdnCardState*) ;
 int initjade (struct IsdnCardState*) ;
 int release_io_bkm (struct IsdnCardState*) ;
 int reset_bkm (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int
BKM_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 switch (mt) {
  case 129:

   spin_lock_irqsave(&cs->lock, flags);
   enable_bkm_int(cs, 0);
   reset_bkm(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   return (0);
  case 130:

   spin_lock_irqsave(&cs->lock, flags);
   enable_bkm_int(cs, 0);
   reset_bkm(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   release_io_bkm(cs);
   return (0);
  case 131:
   spin_lock_irqsave(&cs->lock, flags);
   clear_pending_isac_ints(cs);
   clear_pending_jade_ints(cs);
   initisac(cs);
   initjade(cs);

   enable_bkm_int(cs, 1);
   spin_unlock_irqrestore(&cs->lock, flags);
   return (0);
  case 128:
   return (0);
 }
 return (0);
}
