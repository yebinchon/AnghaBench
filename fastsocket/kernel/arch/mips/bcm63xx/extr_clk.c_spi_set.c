
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 scalar_t__ BCMCPU_IS_6338 () ;
 scalar_t__ BCMCPU_IS_6348 () ;
 int CKCTL_6338_SPI_EN ;
 int CKCTL_6348_SPI_EN ;
 int CKCTL_6358_SPI_EN ;
 int bcm_hwclock_set (int ,int) ;

__attribute__((used)) static void spi_set(struct clk *clk, int enable)
{
 u32 mask;

 if (BCMCPU_IS_6338())
  mask = CKCTL_6338_SPI_EN;
 else if (BCMCPU_IS_6348())
  mask = CKCTL_6348_SPI_EN;
 else

  mask = CKCTL_6358_SPI_EN;
 bcm_hwclock_set(mask, enable);
}
