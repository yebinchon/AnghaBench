
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;


 int CLRATNO ;
 int CLRBUSFREE ;
 int CLRINT ;
 int CLRPHASECHG ;
 int CLRREQINIT ;
 int CLRSCSIINT ;
 int CLRSCSIPERR ;
 int CLRSCSIRSTI ;
 int CLRSELDI ;
 int CLRSELDO ;
 int CLRSELINGO ;
 int CLRSELTIMEO ;
 int CLRSINT0 ;
 int CLRSINT1 ;
 int ahc_flush_device_writes (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;

__attribute__((used)) static void
ahc_clear_intstat(struct ahc_softc *ahc)
{

 ahc_outb(ahc, CLRSINT1, CLRSELTIMEO|CLRATNO|CLRSCSIRSTI
    |CLRBUSFREE|CLRSCSIPERR|CLRPHASECHG|
    CLRREQINIT);
 ahc_flush_device_writes(ahc);
 ahc_outb(ahc, CLRSINT0, CLRSELDO|CLRSELDI|CLRSELINGO);
  ahc_flush_device_writes(ahc);
 ahc_outb(ahc, CLRINT, CLRSCSIINT);
 ahc_flush_device_writes(ahc);
}
