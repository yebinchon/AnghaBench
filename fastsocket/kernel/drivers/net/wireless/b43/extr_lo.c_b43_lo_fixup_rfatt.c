
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_rfatt {int att; int with_padmix; } ;



__attribute__((used)) static inline void b43_lo_fixup_rfatt(struct b43_rfatt *rf)
{
 if (!rf->with_padmix)
  return;
 if ((rf->att != 1) && (rf->att != 2) && (rf->att != 3))
  rf->att = 4;
}
