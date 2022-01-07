
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahc_softc {int dummy; } ;


 int ahc_outb (struct ahc_softc*,int,int) ;

void
ahc_outw(struct ahc_softc *ahc, u_int port, u_int value)
{
 ahc_outb(ahc, port, value & 0xFF);
 ahc_outb(ahc, port+1, (value >> 8) & 0xFF);
}
