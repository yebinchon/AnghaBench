
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int rx_buf; int tx_buf; } ;
struct spi_imx_data {int count; int xfer_done; int (* intctrl ) (struct spi_imx_data*,int ) ;scalar_t__ txfifo; int rx_buf; int tx_buf; } ;
struct spi_device {int master; } ;


 int MXC_INT_TE ;
 int init_completion (int *) ;
 int spi_imx_push (struct spi_imx_data*) ;
 struct spi_imx_data* spi_master_get_devdata (int ) ;
 int stub1 (struct spi_imx_data*,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int spi_imx_transfer(struct spi_device *spi,
    struct spi_transfer *transfer)
{
 struct spi_imx_data *spi_imx = spi_master_get_devdata(spi->master);

 spi_imx->tx_buf = transfer->tx_buf;
 spi_imx->rx_buf = transfer->rx_buf;
 spi_imx->count = transfer->len;
 spi_imx->txfifo = 0;

 init_completion(&spi_imx->xfer_done);

 spi_imx_push(spi_imx);

 spi_imx->intctrl(spi_imx, MXC_INT_TE);

 wait_for_completion(&spi_imx->xfer_done);

 return transfer->len;
}
