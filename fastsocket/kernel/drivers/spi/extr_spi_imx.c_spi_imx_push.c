
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {int txfifo; int (* trigger ) (struct spi_imx_data*) ;int (* tx ) (struct spi_imx_data*) ;int count; } ;


 int stub1 (struct spi_imx_data*) ;
 int stub2 (struct spi_imx_data*) ;

__attribute__((used)) static void spi_imx_push(struct spi_imx_data *spi_imx)
{
 while (spi_imx->txfifo < 8) {
  if (!spi_imx->count)
   break;
  spi_imx->tx(spi_imx);
  spi_imx->txfifo++;
 }

 spi_imx->trigger(spi_imx);
}
