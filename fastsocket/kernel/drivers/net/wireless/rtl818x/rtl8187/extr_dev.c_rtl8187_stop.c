
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int queue; } ;
struct rtl8187_priv {int work; int is_rtl8187b; int conf_mutex; int anchored; TYPE_3__ b_tx_status; TYPE_2__* map; TYPE_1__* rf; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_5__ {int EEPROM_CMD; int CONFIG4; int CMD; int INT_MASK; } ;
struct TYPE_4__ {int (* stop ) (struct ieee80211_hw*) ;} ;


 int RTL818X_CMD_RX_ENABLE ;
 int RTL818X_CMD_TX_ENABLE ;
 int RTL818X_CONFIG4_VCOOFF ;
 int RTL818X_EEPROM_CMD_CONFIG ;
 int RTL818X_EEPROM_CMD_NORMAL ;
 int cancel_delayed_work_sync (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl8187_set_anaparam (struct rtl8187_priv*,int) ;
 int rtl818x_ioread8 (struct rtl8187_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8187_priv*,int *,int ) ;
 int rtl818x_iowrite8 (struct rtl8187_priv*,int *,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int stub1 (struct ieee80211_hw*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void rtl8187_stop(struct ieee80211_hw *dev)
{
 struct rtl8187_priv *priv = dev->priv;
 struct sk_buff *skb;
 u32 reg;

 mutex_lock(&priv->conf_mutex);
 rtl818x_iowrite16(priv, &priv->map->INT_MASK, 0);

 reg = rtl818x_ioread8(priv, &priv->map->CMD);
 reg &= ~RTL818X_CMD_TX_ENABLE;
 reg &= ~RTL818X_CMD_RX_ENABLE;
 rtl818x_iowrite8(priv, &priv->map->CMD, reg);

 priv->rf->stop(dev);
 rtl8187_set_anaparam(priv, 0);

 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_CONFIG);
 reg = rtl818x_ioread8(priv, &priv->map->CONFIG4);
 rtl818x_iowrite8(priv, &priv->map->CONFIG4, reg | RTL818X_CONFIG4_VCOOFF);
 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_NORMAL);

 while ((skb = skb_dequeue(&priv->b_tx_status.queue)))
  dev_kfree_skb_any(skb);

 usb_kill_anchored_urbs(&priv->anchored);
 mutex_unlock(&priv->conf_mutex);

 if (!priv->is_rtl8187b)
  cancel_delayed_work_sync(&priv->work);
}
