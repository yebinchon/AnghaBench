
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p54s_priv {TYPE_1__* spi; } ;
typedef int __le32 ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int HOST_ALLOWED ;
 int SPI_ADRS_DMA_DATA ;
 int SPI_ADRS_DMA_WRITE_BASE ;
 int SPI_ADRS_DMA_WRITE_CTRL ;
 int SPI_ADRS_DMA_WRITE_LEN ;
 size_t SPI_DMA_WRITE_CTRL_ENABLE ;
 int cpu_to_le16 (size_t) ;
 int dev_err (int *,char*) ;
 int p54spi_spi_write (struct p54s_priv*,int ,void const*,size_t) ;
 int p54spi_wait_bit (struct p54s_priv*,int ,int ) ;
 int p54spi_write16 (struct p54s_priv*,int ,int ) ;
 int p54spi_write32 (struct p54s_priv*,int ,int ) ;

__attribute__((used)) static int p54spi_spi_write_dma(struct p54s_priv *priv, __le32 base,
    const void *buf, size_t len)
{
 if (!p54spi_wait_bit(priv, SPI_ADRS_DMA_WRITE_CTRL, HOST_ALLOWED)) {
  dev_err(&priv->spi->dev, "spi_write_dma not allowed "
   "to DMA write.\n");
  return -EAGAIN;
 }

 p54spi_write16(priv, SPI_ADRS_DMA_WRITE_CTRL,
         cpu_to_le16(SPI_DMA_WRITE_CTRL_ENABLE));

 p54spi_write16(priv, SPI_ADRS_DMA_WRITE_LEN, cpu_to_le16(len));
 p54spi_write32(priv, SPI_ADRS_DMA_WRITE_BASE, base);
 p54spi_spi_write(priv, SPI_ADRS_DMA_DATA, buf, len);
 return 0;
}
