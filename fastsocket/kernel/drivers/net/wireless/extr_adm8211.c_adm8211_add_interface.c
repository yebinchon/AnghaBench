
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int type; scalar_t__ addr; } ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {scalar_t__ mode; } ;
typedef int __le32 ;
typedef int __le16 ;


 int ADM8211_CSR_WRITE (int ,int ) ;
 int ADM8211_IDLE () ;
 int ADM8211_RESTORE () ;
 int EOPNOTSUPP ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;

 int PAR0 ;
 int PAR1 ;
 int adm8211_update_mode (struct ieee80211_hw*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int adm8211_add_interface(struct ieee80211_hw *dev,
     struct ieee80211_vif *vif)
{
 struct adm8211_priv *priv = dev->priv;
 if (priv->mode != NL80211_IFTYPE_MONITOR)
  return -EOPNOTSUPP;

 switch (vif->type) {
 case 128:
  priv->mode = vif->type;
  break;
 default:
  return -EOPNOTSUPP;
 }

 ADM8211_IDLE();

 ADM8211_CSR_WRITE(PAR0, le32_to_cpu(*(__le32 *)vif->addr));
 ADM8211_CSR_WRITE(PAR1, le16_to_cpu(*(__le16 *)(vif->addr + 4)));

 adm8211_update_mode(dev);

 ADM8211_RESTORE();

 return 0;
}
