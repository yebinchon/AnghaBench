
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_mac {int dummy; } ;
struct ieee80211_hw {struct zd_mac* priv; } ;



__attribute__((used)) static inline struct zd_mac *zd_hw_mac(struct ieee80211_hw *hw)
{
 return hw->priv;
}
