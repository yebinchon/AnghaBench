
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int portnr; int brdnr; int pagenr; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int CAR ;
 int SRER ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stl_cd1400setreg (struct stlport*,int ,int) ;

__attribute__((used)) static void stl_cd1400disableintrs(struct stlport *portp)
{
 unsigned long flags;

 pr_debug("stl_cd1400disableintrs(portp=%p)\n", portp);

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_cd1400setreg(portp, CAR, (portp->portnr & 0x03));
 stl_cd1400setreg(portp, SRER, 0);
 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);
}
