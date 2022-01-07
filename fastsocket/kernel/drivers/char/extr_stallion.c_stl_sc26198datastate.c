
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int brdnr; int pagenr; int istate; } ;


 int ASYI_TXBUSY ;
 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int SR ;
 unsigned char SR_TXEMPTY ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned char stl_sc26198getreg (struct stlport*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int stl_sc26198datastate(struct stlport *portp)
{
 unsigned long flags;
 unsigned char sr;

 pr_debug("stl_sc26198datastate(portp=%p)\n", portp);

 if (portp == ((void*)0))
  return 0;
 if (test_bit(ASYI_TXBUSY, &portp->istate))
  return 1;

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 sr = stl_sc26198getreg(portp, SR);
 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);

 return (sr & SR_TXEMPTY) ? 0 : 1;
}
