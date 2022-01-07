
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spi_transfer {int len; int rx_buf; int * tx_buf; } ;
struct spi_device {int master; int dev; } ;
struct ppc4xx_spi {int count; int done; TYPE_1__* regs; int * tx; int len; int rx; } ;
struct TYPE_2__ {int cr; int txd; } ;


 int SPI_PPC4XX_CR_STR ;
 int dev_dbg (int *,char*,int *,int ,int ) ;
 int out_8 (int *,int ) ;
 struct ppc4xx_spi* spi_master_get_devdata (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int spi_ppc4xx_txrx(struct spi_device *spi, struct spi_transfer *t)
{
 struct ppc4xx_spi *hw;
 u8 data;

 dev_dbg(&spi->dev, "txrx: tx %p, rx %p, len %d\n",
  t->tx_buf, t->rx_buf, t->len);

 hw = spi_master_get_devdata(spi->master);

 hw->tx = t->tx_buf;
 hw->rx = t->rx_buf;
 hw->len = t->len;
 hw->count = 0;


 data = hw->tx ? hw->tx[0] : 0;
 out_8(&hw->regs->txd, data);
 out_8(&hw->regs->cr, SPI_PPC4XX_CR_STR);
 wait_for_completion(&hw->done);

 return hw->count;
}
