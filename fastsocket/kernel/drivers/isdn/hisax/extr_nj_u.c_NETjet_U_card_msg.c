
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct IsdnCardState {int lock; int (* writeisac ) (struct IsdnCardState*,int ,int ) ;} ;






 int ICC_MASK ;
 int clear_pending_icc_ints (struct IsdnCardState*) ;
 int initicc (struct IsdnCardState*) ;
 int inittiger (struct IsdnCardState*) ;
 int release_io_netjet (struct IsdnCardState*) ;
 int reset_netjet_u (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (struct IsdnCardState*,int ,int ) ;

__attribute__((used)) static int
NETjet_U_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 switch (mt) {
  case 129:
   spin_lock_irqsave(&cs->lock, flags);
   reset_netjet_u(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 130:
   release_io_netjet(cs);
   return(0);
  case 131:
   spin_lock_irqsave(&cs->lock, flags);
   inittiger(cs);
   reset_netjet_u(cs);
   clear_pending_icc_ints(cs);
   initicc(cs);

   cs->writeisac(cs, ICC_MASK, 0);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 128:
   return(0);
 }
 return(0);
}
