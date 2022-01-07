
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct il_priv {TYPE_2__* hw; } ;
struct ieee80211_supported_band {int dummy; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {struct ieee80211_supported_band const** bands; } ;



__attribute__((used)) static inline const struct ieee80211_supported_band *
il_get_hw_mode(struct il_priv *il, enum ieee80211_band band)
{
 return il->hw->wiphy->bands[band];
}
