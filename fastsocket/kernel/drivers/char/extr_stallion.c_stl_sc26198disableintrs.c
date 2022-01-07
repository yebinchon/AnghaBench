
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int brdnr; scalar_t__ imr; int pagenr; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int IMR ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stl_sc26198setreg (struct stlport*,int ,int ) ;

__attribute__((used)) static void stl_sc26198disableintrs(struct stlport *portp)
{
 unsigned long flags;

 pr_debug("stl_sc26198disableintrs(portp=%p)\n", portp);

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 portp->imr = 0;
 stl_sc26198setreg(portp, IMR, 0);
 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);
}
