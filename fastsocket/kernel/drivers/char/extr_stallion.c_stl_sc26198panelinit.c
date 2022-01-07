
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlpanel {int pagenr; int nrports; int iobase; int brdnr; int panelnr; } ;
struct stlbrd {scalar_t__ brdtype; scalar_t__ ioctrl; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int) ;
 scalar_t__ BRD_ECHPCI ;
 int CR_RESETALL ;
 int GCCR ;
 int GCCR_IVRTYPCHANACK ;
 int SC26198_PORTS ;
 int SCCR ;
 int TSTR ;
 int WDTRCR ;
 scalar_t__ XP_ADDR ;
 scalar_t__ XP_DATA ;
 scalar_t__ inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int pr_debug (char*,struct stlbrd*,struct stlpanel*) ;
 int printk (char*,int ,int ,int) ;

__attribute__((used)) static int stl_sc26198panelinit(struct stlbrd *brdp, struct stlpanel *panelp)
{
 int chipmask, i;
 int nrchips, ioaddr;

 pr_debug("stl_sc26198panelinit(brdp=%p,panelp=%p)\n", brdp, panelp);

 BRDENABLE(panelp->brdnr, panelp->pagenr);




 chipmask = 0;
 nrchips = (panelp->nrports + 4) / SC26198_PORTS;
 if (brdp->brdtype == BRD_ECHPCI)
  outb(panelp->pagenr, brdp->ioctrl);

 for (i = 0; i < nrchips; i++) {
  ioaddr = panelp->iobase + (i * 4);
  outb(SCCR, (ioaddr + XP_ADDR));
  outb(CR_RESETALL, (ioaddr + XP_DATA));
  outb(TSTR, (ioaddr + XP_ADDR));
  if (inb(ioaddr + XP_DATA) != 0) {
   printk("STALLION: sc26198 not responding, "
    "brd=%d panel=%d chip=%d\n",
    panelp->brdnr, panelp->panelnr, i);
   continue;
  }
  chipmask |= (0x1 << i);
  outb(GCCR, (ioaddr + XP_ADDR));
  outb(GCCR_IVRTYPCHANACK, (ioaddr + XP_DATA));
  outb(WDTRCR, (ioaddr + XP_ADDR));
  outb(0xff, (ioaddr + XP_DATA));
 }

 BRDDISABLE(panelp->brdnr);
 return chipmask;
}
