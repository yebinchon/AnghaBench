
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlpanel {int nrports; } ;


 scalar_t__ EREG_DATA ;
 scalar_t__ SVRR ;
 unsigned char SVRR_MDM ;
 unsigned char SVRR_RX ;
 unsigned char SVRR_TX ;
 int brd_lock ;
 unsigned char inb (scalar_t__) ;
 int outb (scalar_t__,unsigned int) ;
 int pr_debug (char*,struct stlpanel*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stl_cd1400mdmisr (struct stlpanel*,unsigned int) ;
 int stl_cd1400rxisr (struct stlpanel*,unsigned int) ;
 int stl_cd1400txisr (struct stlpanel*,unsigned int) ;

__attribute__((used)) static void stl_cd1400eiointr(struct stlpanel *panelp, unsigned int iobase)
{
 unsigned char svrtype;

 pr_debug("stl_cd1400eiointr(panelp=%p,iobase=%x)\n", panelp, iobase);

 spin_lock(&brd_lock);
 outb(SVRR, iobase);
 svrtype = inb(iobase + EREG_DATA);
 if (panelp->nrports > 4) {
  outb((SVRR + 0x80), iobase);
  svrtype |= inb(iobase + EREG_DATA);
 }

 if (svrtype & SVRR_RX)
  stl_cd1400rxisr(panelp, iobase);
 else if (svrtype & SVRR_TX)
  stl_cd1400txisr(panelp, iobase);
 else if (svrtype & SVRR_MDM)
  stl_cd1400mdmisr(panelp, iobase);

 spin_unlock(&brd_lock);
}
