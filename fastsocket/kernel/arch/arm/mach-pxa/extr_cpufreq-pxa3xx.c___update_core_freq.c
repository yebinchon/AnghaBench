
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pxa3xx_freq_info {int core_xn; int core_xl; } ;


 int ACCR ;
 int ACCR_XL (int ) ;
 int ACCR_XL_MASK ;
 int ACCR_XN (int) ;
 int ACCR_XN_MASK ;
 int ACCR_XSPCLK (int ) ;
 int ACCR_XSPCLK_MASK ;
 int ACSR ;
 int XSPCLK_NONE ;
 int cpu_relax () ;

__attribute__((used)) static void __update_core_freq(struct pxa3xx_freq_info *info)
{
 uint32_t mask = ACCR_XN_MASK | ACCR_XL_MASK;
 uint32_t accr = ACCR;
 uint32_t xclkcfg;

 accr &= ~(ACCR_XN_MASK | ACCR_XL_MASK | ACCR_XSPCLK_MASK);
 accr |= ACCR_XN(info->core_xn) | ACCR_XL(info->core_xl);


 accr |= ACCR_XSPCLK(XSPCLK_NONE);

 xclkcfg = (info->core_xn == 2) ? 0x3 : 0x2;

 ACCR = accr;
 __asm__("mcr p14, 0, %0, c6, c0, 0\n" : : "r"(xclkcfg));

 while ((ACSR & mask) != (accr & mask))
  cpu_relax();
}
