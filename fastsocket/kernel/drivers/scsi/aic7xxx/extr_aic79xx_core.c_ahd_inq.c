
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ u_int ;
struct ahd_softc {int dummy; } ;


 int ahd_inb (struct ahd_softc*,scalar_t__) ;

uint64_t
ahd_inq(struct ahd_softc *ahd, u_int port)
{
 return ((ahd_inb(ahd, port))
       | (ahd_inb(ahd, port+1) << 8)
       | (ahd_inb(ahd, port+2) << 16)
       | (ahd_inb(ahd, port+3) << 24)
       | (((uint64_t)ahd_inb(ahd, port+4)) << 32)
       | (((uint64_t)ahd_inb(ahd, port+5)) << 40)
       | (((uint64_t)ahd_inb(ahd, port+6)) << 48)
       | (((uint64_t)ahd_inb(ahd, port+7)) << 56));
}
