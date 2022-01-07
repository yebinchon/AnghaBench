
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int unpause; } ;


 int BRKADRINT ;
 int HCNTRL ;
 int INTSTAT ;
 int SCSIINT ;
 int SEQINT ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int ) ;

void
ahc_unpause(struct ahc_softc *ahc)
{
 if ((ahc_inb(ahc, INTSTAT) & (SCSIINT | SEQINT | BRKADRINT)) == 0)
  ahc_outb(ahc, HCNTRL, ahc->unpause);
}
