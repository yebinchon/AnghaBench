
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct omap_hsmmc_host {int base; int fclk; } ;


 int CLKD_MASK ;
 int CLKD_SHIFT ;
 int DTO_MASK ;
 int DTO_SHIFT ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 int SYSCTL ;
 int clk_get_rate (int ) ;

__attribute__((used)) static void set_data_timeout(struct omap_hsmmc_host *host,
        unsigned int timeout_ns,
        unsigned int timeout_clks)
{
 unsigned int timeout, cycle_ns;
 uint32_t reg, clkd, dto = 0;

 reg = OMAP_HSMMC_READ(host->base, SYSCTL);
 clkd = (reg & CLKD_MASK) >> CLKD_SHIFT;
 if (clkd == 0)
  clkd = 1;

 cycle_ns = 1000000000 / (clk_get_rate(host->fclk) / clkd);
 timeout = timeout_ns / cycle_ns;
 timeout += timeout_clks;
 if (timeout) {
  while ((timeout & 0x80000000) == 0) {
   dto += 1;
   timeout <<= 1;
  }
  dto = 31 - dto;
  timeout <<= 1;
  if (timeout && dto)
   dto += 1;
  if (dto >= 13)
   dto -= 13;
  else
   dto = 0;
  if (dto > 14)
   dto = 14;
 }

 reg &= ~DTO_MASK;
 reg |= dto << DTO_SHIFT;
 OMAP_HSMMC_WRITE(host->base, SYSCTL, reg);
}
