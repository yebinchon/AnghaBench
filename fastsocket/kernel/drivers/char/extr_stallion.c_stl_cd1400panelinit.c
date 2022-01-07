
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlpanel {int nrports; int iobase; int brdnr; int panelnr; scalar_t__ pagenr; } ;
struct stlbrd {scalar_t__ brdtype; int ioctrl; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,scalar_t__) ;
 scalar_t__ BRD_ECHPCI ;
 scalar_t__ CCR ;
 int CCR_MAXWAIT ;
 scalar_t__ CCR_RESETFULL ;
 int CD1400_PORTS ;
 int EREG_BANKSIZE ;
 int EREG_DATA ;
 scalar_t__ GFRCR ;
 scalar_t__ PPR ;
 scalar_t__ PPR_SCALAR ;
 int brd_lock ;
 unsigned int inb (int) ;
 int outb (scalar_t__,int) ;
 int pr_debug (char*,struct stlbrd*,struct stlpanel*) ;
 int printk (char*,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int stl_cd1400panelinit(struct stlbrd *brdp, struct stlpanel *panelp)
{
 unsigned int gfrcr;
 int chipmask, i, j;
 int nrchips, uartaddr, ioaddr;
 unsigned long flags;

 pr_debug("stl_panelinit(brdp=%p,panelp=%p)\n", brdp, panelp);

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(panelp->brdnr, panelp->pagenr);




 chipmask = 0;
 nrchips = panelp->nrports / CD1400_PORTS;
 for (i = 0; i < nrchips; i++) {
  if (brdp->brdtype == BRD_ECHPCI) {
   outb((panelp->pagenr + (i >> 1)), brdp->ioctrl);
   ioaddr = panelp->iobase;
  } else
   ioaddr = panelp->iobase + (EREG_BANKSIZE * (i >> 1));
  uartaddr = (i & 0x01) ? 0x080 : 0;
  outb((GFRCR + uartaddr), ioaddr);
  outb(0, (ioaddr + EREG_DATA));
  outb((CCR + uartaddr), ioaddr);
  outb(CCR_RESETFULL, (ioaddr + EREG_DATA));
  outb(CCR_RESETFULL, (ioaddr + EREG_DATA));
  outb((GFRCR + uartaddr), ioaddr);
  for (j = 0; j < CCR_MAXWAIT; j++)
   if ((gfrcr = inb(ioaddr + EREG_DATA)) != 0)
    break;

  if ((j >= CCR_MAXWAIT) || (gfrcr < 0x40) || (gfrcr > 0x60)) {
   printk("STALLION: cd1400 not responding, "
    "brd=%d panel=%d chip=%d\n",
    panelp->brdnr, panelp->panelnr, i);
   continue;
  }
  chipmask |= (0x1 << i);
  outb((PPR + uartaddr), ioaddr);
  outb(PPR_SCALAR, (ioaddr + EREG_DATA));
 }

 BRDDISABLE(panelp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);
 return chipmask;
}
