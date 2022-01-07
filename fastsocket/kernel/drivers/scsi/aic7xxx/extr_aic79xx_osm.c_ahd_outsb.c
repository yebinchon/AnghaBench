
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahd_softc {int dummy; } ;


 int ahd_outb (struct ahd_softc*,long,int ) ;

void
ahd_outsb(struct ahd_softc * ahd, long port, uint8_t *array, int count)
{
 int i;






 for (i = 0; i < count; i++)
  ahd_outb(ahd, port, *array++);
}
