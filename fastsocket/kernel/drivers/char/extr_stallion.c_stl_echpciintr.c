
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlpanel {int (* isr ) (struct stlpanel*,unsigned int) ;} ;
struct stlbrd {unsigned int nrbnks; unsigned int* bnkstataddr; struct stlpanel** bnk2panel; int ioctrl; int * bnkpageaddr; } ;


 int ECH_PNLINTRPEND ;
 int inb (unsigned int) ;
 int outb (int ,int ) ;
 int stub1 (struct stlpanel*,unsigned int) ;

__attribute__((used)) static int stl_echpciintr(struct stlbrd *brdp)
{
 struct stlpanel *panelp;
 unsigned int ioaddr, bnknr, recheck;
 int handled = 0;

 while (1) {
  recheck = 0;
  for (bnknr = 0; bnknr < brdp->nrbnks; bnknr++) {
   outb(brdp->bnkpageaddr[bnknr], brdp->ioctrl);
   ioaddr = brdp->bnkstataddr[bnknr];
   if (inb(ioaddr) & ECH_PNLINTRPEND) {
    panelp = brdp->bnk2panel[bnknr];
    (* panelp->isr)(panelp, (ioaddr & 0xfffc));
    recheck++;
    handled = 1;
   }
  }
  if (! recheck)
   break;
 }
 return handled;
}
