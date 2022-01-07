
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; int tail; } ;
struct stlport {TYPE_1__ tx; int brdnr; int crenable; int pagenr; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int CR_TXRESET ;
 int SCCR ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stl_sc26198setreg (struct stlport*,int ,int ) ;

__attribute__((used)) static void stl_sc26198flush(struct stlport *portp)
{
 unsigned long flags;

 pr_debug("stl_sc26198flush(portp=%p)\n", portp);

 if (portp == ((void*)0))
  return;

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_sc26198setreg(portp, SCCR, CR_TXRESET);
 stl_sc26198setreg(portp, SCCR, portp->crenable);
 BRDDISABLE(portp->brdnr);
 portp->tx.tail = portp->tx.head;
 spin_unlock_irqrestore(&brd_lock, flags);
}
