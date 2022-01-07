
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p54s_priv {int firmware; TYPE_1__* spi; } ;
struct ieee80211_hw {struct p54s_priv* priv; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int p54_parse_firmware (struct ieee80211_hw*,int ) ;
 int release_firmware (int ) ;
 int request_firmware (int *,char*,int *) ;

__attribute__((used)) static int p54spi_request_firmware(struct ieee80211_hw *dev)
{
 struct p54s_priv *priv = dev->priv;
 int ret;


 ret = request_firmware(&priv->firmware, "3826.arm", &priv->spi->dev);

 if (ret < 0) {
  dev_err(&priv->spi->dev, "request_firmware() failed: %d", ret);
  return ret;
 }

 ret = p54_parse_firmware(dev, priv->firmware);
 if (ret) {
  release_firmware(priv->firmware);
  return ret;
 }

 return 0;
}
