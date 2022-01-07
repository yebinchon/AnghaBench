
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {scalar_t__ isar; } ;
struct TYPE_4__ {TYPE_1__ isurf; } ;
struct IsdnCardState {int lock; int (* writeisac ) (struct IsdnCardState*,int ,int) ;TYPE_2__ hw; } ;






 int ISAC_CMDR ;
 int ISAC_MASK ;
 scalar_t__ ISAR_IRQBIT ;
 int ISURF_RESET ;
 int clear_pending_isac_ints (struct IsdnCardState*) ;
 int initisac (struct IsdnCardState*) ;
 int initisar (struct IsdnCardState*) ;
 int mb () ;
 int release_io_isurf (struct IsdnCardState*) ;
 int reset_isurf (struct IsdnCardState*,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (struct IsdnCardState*,int ,int) ;
 int stub2 (struct IsdnCardState*,int ,int) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int
ISurf_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 switch (mt) {
  case 129:
   spin_lock_irqsave(&cs->lock, flags);
   reset_isurf(cs, ISURF_RESET);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 130:
   release_io_isurf(cs);
   return(0);
  case 131:
   spin_lock_irqsave(&cs->lock, flags);
   reset_isurf(cs, ISURF_RESET);
   clear_pending_isac_ints(cs);
   writeb(0, cs->hw.isurf.isar+ISAR_IRQBIT);mb();
   initisac(cs);
   initisar(cs);

   cs->writeisac(cs, ISAC_MASK, 0);

   cs->writeisac(cs, ISAC_CMDR, 0x41);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 128:
   return(0);
 }
 return(0);
}
