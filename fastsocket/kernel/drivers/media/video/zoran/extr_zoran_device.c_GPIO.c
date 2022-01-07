
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zoran {int dummy; } ;


 int ZR36057_GPPGCR1 ;
 int btread (int ) ;
 int btwrite (int,int ) ;
 int udelay (int) ;

void
GPIO (struct zoran *zr,
      int bit,
      unsigned int value)
{
 u32 reg;
 u32 mask;




 mask = (1 << (24 + bit)) & 0xff000000;
 reg = btread(ZR36057_GPPGCR1) & ~mask;
 if (value) {
  reg |= mask;
 }
 btwrite(reg, ZR36057_GPPGCR1);
 udelay(1);
}
