
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct p54s_priv {int hw; TYPE_1__* spi; } ;
typedef int rx_head ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int ENOMEM ;
 scalar_t__ READAHEAD_SZ ;
 int SPI_ADRS_DMA_DATA ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_err (int *,char*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int memcpy (scalar_t__*,scalar_t__*,scalar_t__) ;
 scalar_t__ p54_rx (int ,struct sk_buff*) ;
 int p54spi_sleep (struct p54s_priv*) ;
 int p54spi_spi_read (struct p54s_priv*,int ,scalar_t__*,scalar_t__) ;
 scalar_t__ p54spi_wakeup (struct p54s_priv*) ;
 scalar_t__* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int p54spi_rx(struct p54s_priv *priv)
{
 struct sk_buff *skb;
 u16 len;
 u16 rx_head[2];


 if (p54spi_wakeup(priv) < 0)
  return -EBUSY;





 p54spi_spi_read(priv, SPI_ADRS_DMA_DATA, rx_head, sizeof(rx_head));
 len = rx_head[0];

 if (len == 0) {
  p54spi_sleep(priv);
  dev_err(&priv->spi->dev, "rx request of zero bytes\n");
  return 0;
 }





 skb = dev_alloc_skb(len + 4);
 if (!skb) {
  p54spi_sleep(priv);
  dev_err(&priv->spi->dev, "could not alloc skb");
  return -ENOMEM;
 }

 if (len <= (sizeof(rx_head)-sizeof(u16))) {
  memcpy(skb_put(skb, len), rx_head + 1, len);
 } else {
  memcpy(skb_put(skb, (sizeof(rx_head)-sizeof(u16))), rx_head + 1, (sizeof(rx_head)-sizeof(u16)));
  p54spi_spi_read(priv, SPI_ADRS_DMA_DATA,
    skb_put(skb, len - (sizeof(rx_head)-sizeof(u16))),
    len - (sizeof(rx_head)-sizeof(u16)));
 }
 p54spi_sleep(priv);


 skb_put(skb, 4);

 if (p54_rx(priv->hw, skb) == 0)
  dev_kfree_skb(skb);

 return 0;
}
