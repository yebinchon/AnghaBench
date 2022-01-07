
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int portnr; int brdnr; int pagenr; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int CAR ;
 int MSVR1 ;
 unsigned char MSVR1_CTS ;
 unsigned char MSVR1_DCD ;
 unsigned char MSVR1_DSR ;
 unsigned char MSVR1_DTR ;
 unsigned char MSVR1_RI ;
 int MSVR2 ;
 unsigned char MSVR2_RTS ;
 int TIOCM_CD ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RI ;
 int TIOCM_RTS ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned char stl_cd1400getreg (struct stlport*,int ) ;
 int stl_cd1400setreg (struct stlport*,int ,int) ;

__attribute__((used)) static int stl_cd1400getsignals(struct stlport *portp)
{
 unsigned char msvr1, msvr2;
 unsigned long flags;
 int sigs;

 pr_debug("stl_cd1400getsignals(portp=%p)\n", portp);

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_cd1400setreg(portp, CAR, (portp->portnr & 0x03));
 msvr1 = stl_cd1400getreg(portp, MSVR1);
 msvr2 = stl_cd1400getreg(portp, MSVR2);
 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);

 sigs = 0;
 sigs |= (msvr1 & MSVR1_DCD) ? TIOCM_CD : 0;
 sigs |= (msvr1 & MSVR1_CTS) ? TIOCM_CTS : 0;
 sigs |= (msvr1 & MSVR1_DTR) ? TIOCM_DTR : 0;
 sigs |= (msvr2 & MSVR2_RTS) ? TIOCM_RTS : 0;




 sigs |= TIOCM_DSR;

 return sigs;
}
