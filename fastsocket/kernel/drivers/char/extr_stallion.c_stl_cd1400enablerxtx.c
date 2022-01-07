
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int portnr; int brdnr; int pagenr; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int CAR ;
 int CCR ;
 unsigned char CCR_RXDISABLE ;
 unsigned char CCR_RXENABLE ;
 unsigned char CCR_TXDISABLE ;
 unsigned char CCR_TXENABLE ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stl_cd1400ccrwait (struct stlport*) ;
 int stl_cd1400setreg (struct stlport*,int ,unsigned char) ;

__attribute__((used)) static void stl_cd1400enablerxtx(struct stlport *portp, int rx, int tx)
{
 unsigned char ccr;
 unsigned long flags;

 pr_debug("stl_cd1400enablerxtx(portp=%p,rx=%d,tx=%d)\n", portp, rx, tx);

 ccr = 0;

 if (tx == 0)
  ccr |= CCR_TXDISABLE;
 else if (tx > 0)
  ccr |= CCR_TXENABLE;
 if (rx == 0)
  ccr |= CCR_RXDISABLE;
 else if (rx > 0)
  ccr |= CCR_RXENABLE;

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_cd1400setreg(portp, CAR, (portp->portnr & 0x03));
 stl_cd1400ccrwait(portp);
 stl_cd1400setreg(portp, CCR, ccr);
 stl_cd1400ccrwait(portp);
 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);
}
