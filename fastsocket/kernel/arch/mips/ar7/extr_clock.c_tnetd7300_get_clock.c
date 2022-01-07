
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tnetd7300_clock {int pll; int ctrl; } ;


 int AR7_REF_CLOCK ;
 int AR7_XTAL_CLOCK ;
 int BOOT_PLL_BYPASS ;


 int BOOT_PLL_SOURCE_MASK ;


 int MUL_MASK ;
 int MUL_SHIFT ;
 int PLL_DIV ;
 int PLL_MODE_MASK ;
 int PLL_NDIV ;
 int POSTDIV_MASK ;
 int PREDIV_MASK ;
 int PREDIV_SHIFT ;
 int ar7_cpu_clock ;
 int readl (int *) ;

__attribute__((used)) static int tnetd7300_get_clock(u32 shift, struct tnetd7300_clock *clock,
 u32 *bootcr, u32 bus_clock)
{
 int product;
 int base_clock = AR7_REF_CLOCK;
 u32 ctrl = readl(&clock->ctrl);
 u32 pll = readl(&clock->pll);
 int prediv = ((ctrl & PREDIV_MASK) >> PREDIV_SHIFT) + 1;
 int postdiv = (ctrl & POSTDIV_MASK) + 1;
 int divisor = prediv * postdiv;
 int mul = ((pll & MUL_MASK) >> MUL_SHIFT) + 1;

 switch ((*bootcr & (BOOT_PLL_SOURCE_MASK << shift)) >> shift) {
 case 131:
  base_clock = bus_clock;
  break;
 case 129:
  base_clock = AR7_REF_CLOCK;
  break;
 case 128:
  base_clock = AR7_XTAL_CLOCK;
  break;
 case 130:
  base_clock = ar7_cpu_clock;
  break;
 }

 if (*bootcr & BOOT_PLL_BYPASS)
  return base_clock / divisor;

 if ((pll & PLL_MODE_MASK) == 0)
  return (base_clock >> (mul / 16 + 1)) / divisor;

 if ((pll & (PLL_NDIV | PLL_DIV)) == (PLL_NDIV | PLL_DIV)) {
  product = (mul & 1) ?
   (base_clock * mul) >> 1 :
   (base_clock * (mul - 1)) >> 2;
  return product / divisor;
 }

 if (mul == 16)
  return base_clock / divisor;

 return base_clock * mul / divisor;
}
