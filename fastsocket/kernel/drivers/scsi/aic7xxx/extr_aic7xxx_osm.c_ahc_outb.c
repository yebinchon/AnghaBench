
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ ioport; scalar_t__ maddr; } ;
struct ahc_softc {scalar_t__ tag; TYPE_1__ bsh; } ;


 scalar_t__ BUS_SPACE_MEMIO ;
 int mb () ;
 int outb (int ,scalar_t__) ;
 int writeb (int ,scalar_t__) ;

void
ahc_outb(struct ahc_softc * ahc, long port, uint8_t val)
{
 if (ahc->tag == BUS_SPACE_MEMIO) {
  writeb(val, ahc->bsh.maddr + port);
 } else {
  outb(val, ahc->bsh.ioport + port);
 }
 mb();
}
