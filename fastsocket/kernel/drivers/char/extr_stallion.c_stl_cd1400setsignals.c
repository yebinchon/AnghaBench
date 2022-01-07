
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int portnr; int brdnr; int pagenr; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int CAR ;
 int MSVR1 ;
 unsigned char MSVR1_DTR ;
 int MSVR2 ;
 unsigned char MSVR2_RTS ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stl_cd1400setreg (struct stlport*,int ,unsigned char) ;

__attribute__((used)) static void stl_cd1400setsignals(struct stlport *portp, int dtr, int rts)
{
 unsigned char msvr1, msvr2;
 unsigned long flags;

 pr_debug("stl_cd1400setsignals(portp=%p,dtr=%d,rts=%d)\n",
   portp, dtr, rts);

 msvr1 = 0;
 msvr2 = 0;
 if (dtr > 0)
  msvr1 = MSVR1_DTR;
 if (rts > 0)
  msvr2 = MSVR2_RTS;

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_cd1400setreg(portp, CAR, (portp->portnr & 0x03));
 if (rts >= 0)
  stl_cd1400setreg(portp, MSVR2, msvr2);
 if (dtr >= 0)
  stl_cd1400setreg(portp, MSVR1, msvr1);
 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);
}
