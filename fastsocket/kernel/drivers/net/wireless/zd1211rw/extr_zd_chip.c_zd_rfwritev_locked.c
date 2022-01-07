
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct zd_chip {int dummy; } ;


 int zd_rfwrite_locked (struct zd_chip*,int const,int ) ;

int zd_rfwritev_locked(struct zd_chip *chip,
                const u32* values, unsigned int count, u8 bits)
{
 int r;
 unsigned int i;

 for (i = 0; i < count; i++) {
  r = zd_rfwrite_locked(chip, values[i], bits);
  if (r)
   return r;
 }

 return 0;
}
