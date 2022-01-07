
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {scalar_t__ base; int spi_clk; } ;
struct spi_imx_config {int bpw; int mode; int speed_hz; } ;


 unsigned int MX1_CSPICTRL_DR_SHIFT ;
 unsigned int MX1_CSPICTRL_ENABLE ;
 unsigned int MX1_CSPICTRL_MASTER ;
 unsigned int MX1_CSPICTRL_PHA ;
 unsigned int MX1_CSPICTRL_POL ;
 scalar_t__ MXC_CSPICTRL ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 unsigned int spi_imx_clkdiv_2 (int ,int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int mx1_config(struct spi_imx_data *spi_imx,
  struct spi_imx_config *config)
{
 unsigned int reg = MX1_CSPICTRL_ENABLE | MX1_CSPICTRL_MASTER;

 reg |= spi_imx_clkdiv_2(spi_imx->spi_clk, config->speed_hz) <<
  MX1_CSPICTRL_DR_SHIFT;
 reg |= config->bpw - 1;

 if (config->mode & SPI_CPHA)
  reg |= MX1_CSPICTRL_PHA;
 if (config->mode & SPI_CPOL)
  reg |= MX1_CSPICTRL_POL;

 writel(reg, spi_imx->base + MXC_CSPICTRL);

 return 0;
}
