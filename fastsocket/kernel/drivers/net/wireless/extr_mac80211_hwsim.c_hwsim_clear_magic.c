
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct hwsim_vif_priv {scalar_t__ magic; } ;



__attribute__((used)) static inline void hwsim_clear_magic(struct ieee80211_vif *vif)
{
 struct hwsim_vif_priv *vp = (void *)vif->drv_priv;
 vp->magic = 0;
}
