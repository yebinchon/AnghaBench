
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {unsigned char crenable; int brdnr; int pagenr; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 unsigned char CR_RXENABLE ;
 unsigned char CR_TXENABLE ;
 int SCCR ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stl_sc26198setreg (struct stlport*,int ,unsigned char) ;

__attribute__((used)) static void stl_sc26198enablerxtx(struct stlport *portp, int rx, int tx)
{
 unsigned char ccr;
 unsigned long flags;

 pr_debug("stl_sc26198enablerxtx(portp=%p,rx=%d,tx=%d)\n", portp, rx,tx);

 ccr = portp->crenable;
 if (tx == 0)
  ccr &= ~CR_TXENABLE;
 else if (tx > 0)
  ccr |= CR_TXENABLE;
 if (rx == 0)
  ccr &= ~CR_RXENABLE;
 else if (rx > 0)
  ccr |= CR_RXENABLE;

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_sc26198setreg(portp, SCCR, ccr);
 BRDDISABLE(portp->brdnr);
 portp->crenable = ccr;
 spin_unlock_irqrestore(&brd_lock, flags);
}
