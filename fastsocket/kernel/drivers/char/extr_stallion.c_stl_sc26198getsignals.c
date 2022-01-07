
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int brdnr; int pagenr; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int IPR ;
 unsigned char IPR_CTS ;
 unsigned char IPR_DCD ;
 unsigned char IPR_DTR ;
 unsigned char IPR_RTS ;
 int TIOCM_CD ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned char stl_sc26198getreg (struct stlport*,int ) ;

__attribute__((used)) static int stl_sc26198getsignals(struct stlport *portp)
{
 unsigned char ipr;
 unsigned long flags;
 int sigs;

 pr_debug("stl_sc26198getsignals(portp=%p)\n", portp);

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 ipr = stl_sc26198getreg(portp, IPR);
 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);

 sigs = 0;
 sigs |= (ipr & IPR_DCD) ? 0 : TIOCM_CD;
 sigs |= (ipr & IPR_CTS) ? 0 : TIOCM_CTS;
 sigs |= (ipr & IPR_DTR) ? 0: TIOCM_DTR;
 sigs |= (ipr & IPR_RTS) ? 0: TIOCM_RTS;
 sigs |= TIOCM_DSR;
 return sigs;
}
