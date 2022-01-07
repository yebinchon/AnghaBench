
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p54s_priv {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int SPI_ADRS_ARM_INTERRUPTS ;
 int SPI_ADRS_HOST_INTERRUPTS ;
 int SPI_HOST_INT_READY ;
 int SPI_TARGET_INT_WAKEUP ;
 int cpu_to_le32 (int ) ;
 int dev_err (int *,char*) ;
 int p54spi_int_ack (struct p54s_priv*,int ) ;
 int p54spi_wait_bit (struct p54s_priv*,int ,int ) ;
 int p54spi_write32 (struct p54s_priv*,int ,int ) ;

__attribute__((used)) static int p54spi_wakeup(struct p54s_priv *priv)
{

 p54spi_write32(priv, SPI_ADRS_ARM_INTERRUPTS,
         cpu_to_le32(SPI_TARGET_INT_WAKEUP));


 if (!p54spi_wait_bit(priv, SPI_ADRS_HOST_INTERRUPTS,
        SPI_HOST_INT_READY)) {
  dev_err(&priv->spi->dev, "INT_READY timeout\n");
  return -EBUSY;
 }

 p54spi_int_ack(priv, SPI_HOST_INT_READY);
 return 0;
}
