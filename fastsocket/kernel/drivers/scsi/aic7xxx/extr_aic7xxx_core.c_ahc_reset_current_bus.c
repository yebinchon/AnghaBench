
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahc_softc {int dummy; } ;


 int AHC_BUSRESET_DELAY ;
 int ENSCSIRST ;
 int SCSIRSTO ;
 int SCSISEQ ;
 int SIMODE1 ;
 int ahc_clear_intstat (struct ahc_softc*) ;
 int ahc_delay (int ) ;
 int ahc_flush_device_writes (struct ahc_softc*) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;

__attribute__((used)) static void
ahc_reset_current_bus(struct ahc_softc *ahc)
{
 uint8_t scsiseq;

 ahc_outb(ahc, SIMODE1, ahc_inb(ahc, SIMODE1) & ~ENSCSIRST);
 scsiseq = ahc_inb(ahc, SCSISEQ);
 ahc_outb(ahc, SCSISEQ, scsiseq | SCSIRSTO);
 ahc_flush_device_writes(ahc);
 ahc_delay(AHC_BUSRESET_DELAY);

 ahc_outb(ahc, SCSISEQ, scsiseq & ~SCSIRSTO);

 ahc_clear_intstat(ahc);


 ahc_outb(ahc, SIMODE1, ahc_inb(ahc, SIMODE1) | ENSCSIRST);
}
