
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int rx_buf; int tx_buf; } ;
struct spi_device {int dev; } ;
struct s3c24xx_spi {int count; int done; scalar_t__ regs; int len; int rx; int tx; } ;


 scalar_t__ S3C2410_SPTDAT ;
 int dev_dbg (int *,char*,int ,int ,int ) ;
 int hw_txbyte (struct s3c24xx_spi*,int ) ;
 int init_completion (int *) ;
 struct s3c24xx_spi* to_hw (struct spi_device*) ;
 int wait_for_completion (int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int s3c24xx_spi_txrx(struct spi_device *spi, struct spi_transfer *t)
{
 struct s3c24xx_spi *hw = to_hw(spi);

 dev_dbg(&spi->dev, "txrx: tx %p, rx %p, len %d\n",
  t->tx_buf, t->rx_buf, t->len);

 hw->tx = t->tx_buf;
 hw->rx = t->rx_buf;
 hw->len = t->len;
 hw->count = 0;

 init_completion(&hw->done);


 writeb(hw_txbyte(hw, 0), hw->regs + S3C2410_SPTDAT);

 wait_for_completion(&hw->done);

 return hw->count;
}
