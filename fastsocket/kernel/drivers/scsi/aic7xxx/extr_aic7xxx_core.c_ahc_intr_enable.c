
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahc_softc {int unpause; int pause; } ;


 int HCNTRL ;
 int INTEN ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int ) ;

void
ahc_intr_enable(struct ahc_softc *ahc, int enable)
{
 u_int hcntrl;

 hcntrl = ahc_inb(ahc, HCNTRL);
 hcntrl &= ~INTEN;
 ahc->pause &= ~INTEN;
 ahc->unpause &= ~INTEN;
 if (enable) {
  hcntrl |= INTEN;
  ahc->pause |= INTEN;
  ahc->unpause |= INTEN;
 }
 ahc_outb(ahc, HCNTRL, hcntrl);
}
