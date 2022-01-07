
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txbreaks; } ;
struct stlport {int brdnr; TYPE_1__ stats; int pagenr; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int CR_TXSTARTBREAK ;
 int CR_TXSTOPBREAK ;
 int SCCR ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stl_sc26198setreg (struct stlport*,int ,int ) ;

__attribute__((used)) static void stl_sc26198sendbreak(struct stlport *portp, int len)
{
 unsigned long flags;

 pr_debug("stl_sc26198sendbreak(portp=%p,len=%d)\n", portp, len);

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 if (len == 1) {
  stl_sc26198setreg(portp, SCCR, CR_TXSTARTBREAK);
  portp->stats.txbreaks++;
 } else
  stl_sc26198setreg(portp, SCCR, CR_TXSTOPBREAK);

 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);
}
