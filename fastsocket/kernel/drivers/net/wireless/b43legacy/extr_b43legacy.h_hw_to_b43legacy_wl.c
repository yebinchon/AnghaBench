
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct b43legacy_wl* priv; } ;
struct b43legacy_wl {int dummy; } ;



__attribute__((used)) static inline
struct b43legacy_wl *hw_to_b43legacy_wl(struct ieee80211_hw *hw)
{
 return hw->priv;
}
