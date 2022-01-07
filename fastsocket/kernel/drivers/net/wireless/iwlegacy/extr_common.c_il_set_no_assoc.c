
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ assoc_id; int filter_flags; } ;
struct il_priv {TYPE_1__ staging; } ;
struct ieee80211_vif {int dummy; } ;


 int RXON_FILTER_ASSOC_MSK ;
 int il_commit_rxon (struct il_priv*) ;

__attribute__((used)) static inline void
il_set_no_assoc(struct il_priv *il, struct ieee80211_vif *vif)
{





 il->staging.filter_flags &= ~RXON_FILTER_ASSOC_MSK;
 il->staging.assoc_id = 0;
 il_commit_rxon(il);
}
