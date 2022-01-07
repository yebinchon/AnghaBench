
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ahd_softc {scalar_t__* tags; TYPE_1__* bshs; } ;
typedef scalar_t__ port ;
struct TYPE_2__ {scalar_t__ ioport; scalar_t__ maddr; } ;


 scalar_t__ BUS_SPACE_MEMIO ;
 int inb (scalar_t__) ;
 int mb () ;
 int readb (scalar_t__) ;

uint8_t
ahd_inb(struct ahd_softc * ahd, long port)
{
 uint8_t x;

 if (ahd->tags[0] == BUS_SPACE_MEMIO) {
  x = readb(ahd->bshs[0].maddr + port);
 } else {
  x = inb(ahd->bshs[(port) >> 8].ioport + ((port) & 0xFF));
 }
 mb();
 return (x);
}
