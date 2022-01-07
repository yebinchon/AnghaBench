
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ u_int ;
struct ahc_softc {int dummy; } ;


 int ahc_inb (struct ahc_softc*,scalar_t__) ;

uint16_t
ahc_inw(struct ahc_softc *ahc, u_int port)
{
 uint16_t r = ahc_inb(ahc, port+1) << 8;
 return r | ahc_inb(ahc, port);
}
