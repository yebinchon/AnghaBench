
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct ahd_softc {scalar_t__* tags; TYPE_1__* bshs; } ;
struct TYPE_2__ {scalar_t__ ioport; scalar_t__ maddr; } ;


 scalar_t__ BUS_SPACE_MEMIO ;
 int mb () ;
 int outw (int ,scalar_t__) ;
 int writew (int ,scalar_t__) ;

void
ahd_outw_atomic(struct ahd_softc * ahd, long port, uint16_t val)
{
 if (ahd->tags[0] == BUS_SPACE_MEMIO) {
  writew(val, ahd->bshs[0].maddr + port);
 } else {
  outw(val, ahd->bshs[(port) >> 8].ioport + (port & 0xFF));
 }
 mb();
}
