
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {scalar_t__ base; } ;


 int MX1_INTREG_RR ;
 scalar_t__ MXC_CSPIINT ;
 int readl (scalar_t__) ;

__attribute__((used)) static int mx1_rx_available(struct spi_imx_data *spi_imx)
{
 return readl(spi_imx->base + MXC_CSPIINT) & MX1_INTREG_RR;
}
