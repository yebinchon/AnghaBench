
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahc_softc {int dummy; } ;


 int ahc_outb (struct ahc_softc*,long,int ) ;

void
ahc_outsb(struct ahc_softc * ahc, long port, uint8_t *array, int count)
{
 int i;






 for (i = 0; i < count; i++)
  ahc_outb(ahc, port, *array++);
}
