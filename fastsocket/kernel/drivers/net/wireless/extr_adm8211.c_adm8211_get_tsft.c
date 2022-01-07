
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {int dummy; } ;


 int ADM8211_CSR_READ (int ) ;
 int TSFTH ;
 int TSFTL ;

__attribute__((used)) static u64 adm8211_get_tsft(struct ieee80211_hw *dev,
       struct ieee80211_vif *vif)
{
 struct adm8211_priv *priv = dev->priv;
 u32 tsftl;
 u64 tsft;

 tsftl = ADM8211_CSR_READ(TSFTL);
 tsft = ADM8211_CSR_READ(TSFTH);
 tsft <<= 32;
 tsft |= tsftl;

 return tsft;
}
