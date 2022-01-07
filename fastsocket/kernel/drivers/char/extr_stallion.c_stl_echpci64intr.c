
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlpanel {int (* isr ) (struct stlpanel*,unsigned int) ;} ;
struct stlbrd {unsigned int ioctrl; unsigned int nrbnks; unsigned int* bnkstataddr; struct stlpanel** bnk2panel; } ;


 int ECH_PNLINTRPEND ;
 int inb (unsigned int) ;
 int stub1 (struct stlpanel*,unsigned int) ;

__attribute__((used)) static int stl_echpci64intr(struct stlbrd *brdp)
{
 struct stlpanel *panelp;
 unsigned int ioaddr, bnknr;
 int handled = 0;

 while (inb(brdp->ioctrl) & 0x1) {
  handled = 1;
  for (bnknr = 0; bnknr < brdp->nrbnks; bnknr++) {
   ioaddr = brdp->bnkstataddr[bnknr];
   if (inb(ioaddr) & ECH_PNLINTRPEND) {
    panelp = brdp->bnk2panel[bnknr];
    (* panelp->isr)(panelp, (ioaddr & 0xfffc));
   }
  }
 }

 return handled;
}
