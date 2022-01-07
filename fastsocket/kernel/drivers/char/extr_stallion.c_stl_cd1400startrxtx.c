
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int portnr; int istate; int brdnr; int pagenr; } ;


 int ASYI_TXBUSY ;
 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int CAR ;
 int SRER ;
 unsigned char SRER_RXDATA ;
 unsigned char SRER_TXDATA ;
 unsigned char SRER_TXEMPTY ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*,int,int) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned char stl_cd1400getreg (struct stlport*,int ) ;
 int stl_cd1400setreg (struct stlport*,int ,unsigned char) ;

__attribute__((used)) static void stl_cd1400startrxtx(struct stlport *portp, int rx, int tx)
{
 unsigned char sreron, sreroff;
 unsigned long flags;

 pr_debug("stl_cd1400startrxtx(portp=%p,rx=%d,tx=%d)\n", portp, rx, tx);

 sreron = 0;
 sreroff = 0;
 if (tx == 0)
  sreroff |= (SRER_TXDATA | SRER_TXEMPTY);
 else if (tx == 1)
  sreron |= SRER_TXDATA;
 else if (tx >= 2)
  sreron |= SRER_TXEMPTY;
 if (rx == 0)
  sreroff |= SRER_RXDATA;
 else if (rx > 0)
  sreron |= SRER_RXDATA;

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_cd1400setreg(portp, CAR, (portp->portnr & 0x03));
 stl_cd1400setreg(portp, SRER,
  ((stl_cd1400getreg(portp, SRER) & ~sreroff) | sreron));
 BRDDISABLE(portp->brdnr);
 if (tx > 0)
  set_bit(ASYI_TXBUSY, &portp->istate);
 spin_unlock_irqrestore(&brd_lock, flags);
}
