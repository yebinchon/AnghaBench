
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {void* priv; } ;
struct dentry {int dummy; } ;



__attribute__((used)) static void *ath_rate_alloc(struct ieee80211_hw *hw, struct dentry *debugfsdir)
{
 return hw->priv;
}
