
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int features; int flags; } ;


 int AHC_ALL_INTERRUPTS ;
 int AHC_REMOVABLE ;
 int ENSELO ;
 int FALSE ;
 int INTSTAT ;
 int INT_PEND ;
 int SCSISEQ ;
 int SELDO ;
 int SELINGO ;
 int SSTAT0 ;
 int TRUE ;
 int ahc_clear_critical_section (struct ahc_softc*) ;
 int ahc_delay (int) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_intr (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_pause (struct ahc_softc*) ;
 int ahc_platform_flushwork (struct ahc_softc*) ;
 int ahc_unpause (struct ahc_softc*) ;
 int printf (char*,int) ;

void
ahc_pause_and_flushwork(struct ahc_softc *ahc)
{
 int intstat;
 int maxloops;
 int paused;

 maxloops = 1000;
 ahc->flags |= AHC_ALL_INTERRUPTS;
 paused = FALSE;
 do {
  if (paused) {
   ahc_unpause(ahc);




   ahc_delay(500);
  }
  ahc_intr(ahc);
  ahc_pause(ahc);
  paused = TRUE;
  ahc_outb(ahc, SCSISEQ, ahc_inb(ahc, SCSISEQ) & ~ENSELO);
  intstat = ahc_inb(ahc, INTSTAT);
  if ((intstat & INT_PEND) == 0) {
   ahc_clear_critical_section(ahc);
   intstat = ahc_inb(ahc, INTSTAT);
  }
 } while (--maxloops
       && (intstat != 0xFF || (ahc->features & AHC_REMOVABLE) == 0)
       && ((intstat & INT_PEND) != 0
        || (ahc_inb(ahc, SSTAT0) & (SELDO|SELINGO)) != 0));
 if (maxloops == 0) {
  printf("Infinite interrupt loop, INTSTAT = %x",
         ahc_inb(ahc, INTSTAT));
 }
 ahc_platform_flushwork(ahc);
 ahc->flags &= ~AHC_ALL_INTERRUPTS;
}
