
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int rtl8225_write (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static void rtl8225_rf_stop(struct ieee80211_hw *dev)
{
 rtl8225_write(dev, 0x4, 0x1f);
}
