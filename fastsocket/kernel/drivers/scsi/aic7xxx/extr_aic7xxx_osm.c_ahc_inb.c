
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ ioport; scalar_t__ maddr; } ;
struct ahc_softc {scalar_t__ tag; TYPE_1__ bsh; } ;


 scalar_t__ BUS_SPACE_MEMIO ;
 int inb (scalar_t__) ;
 int mb () ;
 int readb (scalar_t__) ;

uint8_t
ahc_inb(struct ahc_softc * ahc, long port)
{
 uint8_t x;

 if (ahc->tag == BUS_SPACE_MEMIO) {
  x = readb(ahc->bsh.maddr + port);
 } else {
  x = inb(ahc->bsh.ioport + port);
 }
 mb();
 return (x);
}
