
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int rtl8180_write_phy (struct ieee80211_hw*,int,int) ;
 int write_max2820 (struct ieee80211_hw*,int,int ) ;

__attribute__((used)) static void max2820_rf_stop(struct ieee80211_hw *dev)
{
 rtl8180_write_phy(dev, 3, 0x8);
 write_max2820(dev, 1, 0);
}
