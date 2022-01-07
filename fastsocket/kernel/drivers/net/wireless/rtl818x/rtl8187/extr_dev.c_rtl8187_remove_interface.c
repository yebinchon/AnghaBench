
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8187_priv {int conf_mutex; int * vif; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void rtl8187_remove_interface(struct ieee80211_hw *dev,
         struct ieee80211_vif *vif)
{
 struct rtl8187_priv *priv = dev->priv;
 mutex_lock(&priv->conf_mutex);
 priv->vif = ((void*)0);
 mutex_unlock(&priv->conf_mutex);
}
