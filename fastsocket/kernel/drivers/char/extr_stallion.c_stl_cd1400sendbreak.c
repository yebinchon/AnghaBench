
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txbreaks; } ;
struct stlport {int portnr; int brklen; TYPE_1__ stats; int brdnr; int pagenr; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int CAR ;
 int SRER ;
 int SRER_TXDATA ;
 int SRER_TXEMPTY ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stl_cd1400getreg (struct stlport*,int ) ;
 int stl_cd1400setreg (struct stlport*,int ,int) ;

__attribute__((used)) static void stl_cd1400sendbreak(struct stlport *portp, int len)
{
 unsigned long flags;

 pr_debug("stl_cd1400sendbreak(portp=%p,len=%d)\n", portp, len);

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_cd1400setreg(portp, CAR, (portp->portnr & 0x03));
 stl_cd1400setreg(portp, SRER,
  ((stl_cd1400getreg(portp, SRER) & ~SRER_TXDATA) |
  SRER_TXEMPTY));
 BRDDISABLE(portp->brdnr);
 portp->brklen = len;
 if (len == 1)
  portp->stats.txbreaks++;
 spin_unlock_irqrestore(&brd_lock, flags);
}
