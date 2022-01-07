
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct IsdnCardState {int lock; int (* writeisac ) (struct IsdnCardState*,int ,int ) ;} ;






 int ISAC_MASK ;
 int clear_pending_isac_ints (struct IsdnCardState*) ;
 int initisac (struct IsdnCardState*) ;
 int inittiger (struct IsdnCardState*) ;
 int release_io_netjet (struct IsdnCardState*) ;
 int reset_netjet_s (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (struct IsdnCardState*,int ,int ) ;

__attribute__((used)) static int
NETjet_S_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 switch (mt) {
  case 129:
   spin_lock_irqsave(&cs->lock, flags);
   reset_netjet_s(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 130:
   release_io_netjet(cs);
   return(0);
  case 131:
   reset_netjet_s(cs);
   inittiger(cs);
   spin_lock_irqsave(&cs->lock, flags);
   clear_pending_isac_ints(cs);
   initisac(cs);

   cs->writeisac(cs, ISAC_MASK, 0);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 128:
   return(0);
 }
 return(0);
}
