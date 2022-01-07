
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; int tail; } ;
struct stlport {int portnr; int brdnr; TYPE_1__ tx; int pagenr; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int CAR ;
 int CCR ;
 int CCR_TXFLUSHFIFO ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stl_cd1400ccrwait (struct stlport*) ;
 int stl_cd1400setreg (struct stlport*,int ,int) ;

__attribute__((used)) static void stl_cd1400flush(struct stlport *portp)
{
 unsigned long flags;

 pr_debug("stl_cd1400flush(portp=%p)\n", portp);

 if (portp == ((void*)0))
  return;

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_cd1400setreg(portp, CAR, (portp->portnr & 0x03));
 stl_cd1400ccrwait(portp);
 stl_cd1400setreg(portp, CCR, CCR_TXFLUSHFIFO);
 stl_cd1400ccrwait(portp);
 portp->tx.tail = portp->tx.head;
 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);
}
