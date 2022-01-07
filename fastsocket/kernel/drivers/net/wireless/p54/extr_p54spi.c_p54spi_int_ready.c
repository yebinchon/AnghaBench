
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54s_priv {int fw_state; int fw_comp; } ;



 void* FW_STATE_READY ;

 int SPI_ADRS_HOST_INT_EN ;
 int SPI_HOST_INT_SW_UPDATE ;
 int SPI_HOST_INT_UPDATE ;
 int complete (int *) ;
 int cpu_to_le32 (int) ;
 int p54spi_write32 (struct p54s_priv*,int ,int ) ;

__attribute__((used)) static void p54spi_int_ready(struct p54s_priv *priv)
{
 p54spi_write32(priv, SPI_ADRS_HOST_INT_EN, cpu_to_le32(
         SPI_HOST_INT_UPDATE | SPI_HOST_INT_SW_UPDATE));

 switch (priv->fw_state) {
 case 129:
  priv->fw_state = FW_STATE_READY;
  complete(&priv->fw_comp);
  break;
 case 128:
  priv->fw_state = FW_STATE_READY;

  break;
 default:
  break;
 }
}
