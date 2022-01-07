
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct rtl8180_priv {TYPE_3__* pdev; TYPE_2__* map; TYPE_1__* rf; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_6__ {int irq; } ;
struct TYPE_5__ {int EEPROM_CMD; int CONFIG4; int CMD; int INT_MASK; } ;
struct TYPE_4__ {int (* stop ) (struct ieee80211_hw*) ;} ;


 int RTL818X_CMD_RX_ENABLE ;
 int RTL818X_CMD_TX_ENABLE ;
 int RTL818X_CONFIG4_VCOOFF ;
 int RTL818X_EEPROM_CMD_CONFIG ;
 int RTL818X_EEPROM_CMD_NORMAL ;
 int free_irq (int ,struct ieee80211_hw*) ;
 int rtl8180_free_rx_ring (struct ieee80211_hw*) ;
 int rtl8180_free_tx_ring (struct ieee80211_hw*,int) ;
 int rtl818x_ioread8 (struct rtl8180_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8180_priv*,int *,int ) ;
 int rtl818x_iowrite8 (struct rtl8180_priv*,int *,int) ;
 int stub1 (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8180_stop(struct ieee80211_hw *dev)
{
 struct rtl8180_priv *priv = dev->priv;
 u8 reg;
 int i;

 rtl818x_iowrite16(priv, &priv->map->INT_MASK, 0);

 reg = rtl818x_ioread8(priv, &priv->map->CMD);
 reg &= ~RTL818X_CMD_TX_ENABLE;
 reg &= ~RTL818X_CMD_RX_ENABLE;
 rtl818x_iowrite8(priv, &priv->map->CMD, reg);

 priv->rf->stop(dev);

 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_CONFIG);
 reg = rtl818x_ioread8(priv, &priv->map->CONFIG4);
 rtl818x_iowrite8(priv, &priv->map->CONFIG4, reg | RTL818X_CONFIG4_VCOOFF);
 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_NORMAL);

 free_irq(priv->pdev->irq, dev);

 rtl8180_free_rx_ring(dev);
 for (i = 0; i < 4; i++)
  rtl8180_free_tx_ring(dev, i);
}
