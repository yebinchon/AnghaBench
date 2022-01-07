
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct hwsim_sta_priv {scalar_t__ magic; } ;


 scalar_t__ HWSIM_STA_MAGIC ;
 int WARN_ON (int) ;

__attribute__((used)) static inline void hwsim_check_sta_magic(struct ieee80211_sta *sta)
{
 struct hwsim_sta_priv *sp = (void *)sta->drv_priv;
 WARN_ON(sp->magic != HWSIM_STA_MAGIC);
}
