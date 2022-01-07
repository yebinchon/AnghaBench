
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int brdnr; int pagenr; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int IOPIOR ;
 unsigned char IPR_DTR ;
 unsigned char IPR_RTS ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned char stl_sc26198getreg (struct stlport*,int ) ;
 int stl_sc26198setreg (struct stlport*,int ,unsigned char) ;

__attribute__((used)) static void stl_sc26198setsignals(struct stlport *portp, int dtr, int rts)
{
 unsigned char iopioron, iopioroff;
 unsigned long flags;

 pr_debug("stl_sc26198setsignals(portp=%p,dtr=%d,rts=%d)\n", portp,
   dtr, rts);

 iopioron = 0;
 iopioroff = 0;
 if (dtr == 0)
  iopioroff |= IPR_DTR;
 else if (dtr > 0)
  iopioron |= IPR_DTR;
 if (rts == 0)
  iopioroff |= IPR_RTS;
 else if (rts > 0)
  iopioron |= IPR_RTS;

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_sc26198setreg(portp, IOPIOR,
  ((stl_sc26198getreg(portp, IOPIOR) & ~iopioroff) | iopioron));
 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);
}
