
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int portnr; int uartaddr; int hwid; int brdnr; int pagenr; scalar_t__ ioaddr; } ;
struct stlpanel {int pagenr; scalar_t__ iobase; } ;
struct stlbrd {int dummy; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int IOPCR ;
 int IOPCR_SETSIGS ;
 int pr_debug (char*,struct stlbrd*,struct stlpanel*,struct stlport*) ;
 int stl_sc26198setreg (struct stlport*,int ,int ) ;

__attribute__((used)) static void stl_sc26198portinit(struct stlbrd *brdp, struct stlpanel *panelp, struct stlport *portp)
{
 pr_debug("stl_sc26198portinit(brdp=%p,panelp=%p,portp=%p)\n", brdp,
   panelp, portp);

 if ((brdp == ((void*)0)) || (panelp == ((void*)0)) ||
     (portp == ((void*)0)))
  return;

 portp->ioaddr = panelp->iobase + ((portp->portnr < 8) ? 0 : 4);
 portp->uartaddr = (portp->portnr & 0x07) << 4;
 portp->pagenr = panelp->pagenr;
 portp->hwid = 0x1;

 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_sc26198setreg(portp, IOPCR, IOPCR_SETSIGS);
 BRDDISABLE(portp->brdnr);
}
