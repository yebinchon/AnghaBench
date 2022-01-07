
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_hw {int lock; } ;


 int ath5k_hw_set_coverage_class (struct ath5k_hw*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
ath5k_set_coverage_class(struct ieee80211_hw *hw, u8 coverage_class)
{
 struct ath5k_hw *ah = hw->priv;

 mutex_lock(&ah->lock);
 ath5k_hw_set_coverage_class(ah, coverage_class);
 mutex_unlock(&ah->lock);
}
