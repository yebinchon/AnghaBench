
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {int dummy; } ;
typedef int __le32 ;


 int ABDA1 ;
 int ADM8211_CSR_READ (int ) ;
 int ADM8211_CSR_WRITE (int ,int) ;
 int BSSID0 ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void adm8211_set_bssid(struct ieee80211_hw *dev, const u8 *bssid)
{
 struct adm8211_priv *priv = dev->priv;
 u32 reg;

 ADM8211_CSR_WRITE(BSSID0, le32_to_cpu(*(__le32 *)bssid));
 reg = ADM8211_CSR_READ(ABDA1);
 reg &= 0x0000ffff;
 reg |= (bssid[4] << 16) | (bssid[5] << 24);
 ADM8211_CSR_WRITE(ABDA1, reg);
}
