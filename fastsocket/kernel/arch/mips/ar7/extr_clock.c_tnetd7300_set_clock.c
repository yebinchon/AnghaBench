
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tnetd7300_clock {int pll; int ctrl; } ;


 int AR7_REF_CLOCK ;
 int AR7_XTAL_CLOCK ;


 int BOOT_PLL_SOURCE_MASK ;


 int MUL_SHIFT ;
 int PLL_STATUS ;
 int PREDIV_SHIFT ;
 int ar7_bus_clock ;
 int ar7_cpu_clock ;
 int calculate (int,int,int*,int*,int*) ;
 int msleep (int) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void tnetd7300_set_clock(u32 shift, struct tnetd7300_clock *clock,
 u32 *bootcr, u32 frequency)
{
 int prediv, postdiv, mul;
 int base_clock = ar7_bus_clock;

 switch ((*bootcr & (BOOT_PLL_SOURCE_MASK << shift)) >> shift) {
 case 131:
  base_clock = ar7_bus_clock;
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

 calculate(base_clock, frequency, &prediv, &postdiv, &mul);

 writel(((prediv - 1) << PREDIV_SHIFT) | (postdiv - 1), &clock->ctrl);
 msleep(1);
 writel(4, &clock->pll);
 while (readl(&clock->pll) & PLL_STATUS)
  ;
 writel(((mul - 1) << MUL_SHIFT) | (0xff << 3) | 0x0e, &clock->pll);
 msleep(75);
}
