
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int portnr; int uartaddr; int brdnr; int hwid; scalar_t__ pagenr; scalar_t__ ioaddr; } ;
struct stlpanel {scalar_t__ pagenr; scalar_t__ iobase; } ;
struct stlbrd {scalar_t__ brdtype; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,scalar_t__) ;
 scalar_t__ BRD_ECHPCI ;
 int CAR ;
 scalar_t__ EREG_BANKSIZE ;
 int GFRCR ;
 int LIVR ;
 int brd_lock ;
 int pr_debug (char*,struct stlbrd*,struct stlpanel*,struct stlport*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stl_cd1400getreg (struct stlport*,int ) ;
 int stl_cd1400setreg (struct stlport*,int ,int) ;

__attribute__((used)) static void stl_cd1400portinit(struct stlbrd *brdp, struct stlpanel *panelp, struct stlport *portp)
{
 unsigned long flags;
 pr_debug("stl_cd1400portinit(brdp=%p,panelp=%p,portp=%p)\n", brdp,
   panelp, portp);

 if ((brdp == ((void*)0)) || (panelp == ((void*)0)) ||
     (portp == ((void*)0)))
  return;

 spin_lock_irqsave(&brd_lock, flags);
 portp->ioaddr = panelp->iobase + (((brdp->brdtype == BRD_ECHPCI) ||
  (portp->portnr < 8)) ? 0 : EREG_BANKSIZE);
 portp->uartaddr = (portp->portnr & 0x04) << 5;
 portp->pagenr = panelp->pagenr + (portp->portnr >> 3);

 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_cd1400setreg(portp, CAR, (portp->portnr & 0x03));
 stl_cd1400setreg(portp, LIVR, (portp->portnr << 3));
 portp->hwid = stl_cd1400getreg(portp, GFRCR);
 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);
}
