
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {int xfer_done; int (* intctrl ) (struct spi_imx_data*,int ) ;scalar_t__ txfifo; scalar_t__ count; int (* rx ) (struct spi_imx_data*) ;scalar_t__ (* rx_available ) (struct spi_imx_data*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MXC_INT_RR ;
 int complete (int *) ;
 int spi_imx_push (struct spi_imx_data*) ;
 scalar_t__ stub1 (struct spi_imx_data*) ;
 int stub2 (struct spi_imx_data*) ;
 int stub3 (struct spi_imx_data*,int ) ;
 int stub4 (struct spi_imx_data*,int ) ;

__attribute__((used)) static irqreturn_t spi_imx_isr(int irq, void *dev_id)
{
 struct spi_imx_data *spi_imx = dev_id;

 while (spi_imx->rx_available(spi_imx)) {
  spi_imx->rx(spi_imx);
  spi_imx->txfifo--;
 }

 if (spi_imx->count) {
  spi_imx_push(spi_imx);
  return IRQ_HANDLED;
 }

 if (spi_imx->txfifo) {



  spi_imx->intctrl(spi_imx, MXC_INT_RR);
  return IRQ_HANDLED;
 }

 spi_imx->intctrl(spi_imx, 0);
 complete(&spi_imx->xfer_done);

 return IRQ_HANDLED;
}
