
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct ahd_softc {int dummy; } ;


 int ahd_outb (struct ahd_softc*,scalar_t__,int) ;

void
ahd_outl(struct ahd_softc *ahd, u_int port, uint32_t value)
{
 ahd_outb(ahd, port, (value) & 0xFF);
 ahd_outb(ahd, port+1, ((value) >> 8) & 0xFF);
 ahd_outb(ahd, port+2, ((value) >> 16) & 0xFF);
 ahd_outb(ahd, port+3, ((value) >> 24) & 0xFF);
}
