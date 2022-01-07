
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl8187_priv {scalar_t__ asic_rev; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;


 int cpu_to_le16 (int ) ;
 int rtl8225_write_8051 (struct ieee80211_hw*,int ,int ) ;
 int rtl8225_write_bitbang (struct ieee80211_hw*,int ,int ) ;

__attribute__((used)) static void rtl8225_write(struct ieee80211_hw *dev, u8 addr, u16 data)
{
 struct rtl8187_priv *priv = dev->priv;

 if (priv->asic_rev)
  rtl8225_write_8051(dev, addr, cpu_to_le16(data));
 else
  rtl8225_write_bitbang(dev, addr, data);
}
