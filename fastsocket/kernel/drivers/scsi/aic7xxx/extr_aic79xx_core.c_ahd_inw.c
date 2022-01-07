
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ u_int ;
struct ahd_softc {int dummy; } ;


 int ahd_inb (struct ahd_softc*,scalar_t__) ;

uint16_t
ahd_inw(struct ahd_softc *ahd, u_int port)
{





 uint16_t r = ahd_inb(ahd, port+1) << 8;
 return r | ahd_inb(ahd, port);
}
