
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {scalar_t__ base; } ;


 unsigned int MX31_INTREG_RREN ;
 unsigned int MX31_INTREG_TEEN ;
 scalar_t__ MXC_CSPIINT ;
 int MXC_INT_RR ;
 int MXC_INT_TE ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void mx31_intctrl(struct spi_imx_data *spi_imx, int enable)
{
 unsigned int val = 0;

 if (enable & MXC_INT_TE)
  val |= MX31_INTREG_TEEN;
 if (enable & MXC_INT_RR)
  val |= MX31_INTREG_RREN;

 writel(val, spi_imx->base + MXC_CSPIINT);
}
