
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_rxon_context {scalar_t__ ctxid; } ;
struct iwl_priv {int sta_lock; TYPE_1__* stations; } ;
struct TYPE_2__ {scalar_t__ ctxid; int used; } ;


 int IWLAGN_STATION_COUNT ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*,...) ;
 int IWL_STA_UCODE_ACTIVE ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iwl_clear_ucode_stations(struct iwl_priv *priv,
         struct iwl_rxon_context *ctx)
{
 int i;
 bool cleared = 0;

 IWL_DEBUG_INFO(priv, "Clearing ucode stations in driver\n");

 spin_lock_bh(&priv->sta_lock);
 for (i = 0; i < IWLAGN_STATION_COUNT; i++) {
  if (ctx && ctx->ctxid != priv->stations[i].ctxid)
   continue;

  if (priv->stations[i].used & IWL_STA_UCODE_ACTIVE) {
   IWL_DEBUG_INFO(priv,
    "Clearing ucode active for station %d\n", i);
   priv->stations[i].used &= ~IWL_STA_UCODE_ACTIVE;
   cleared = 1;
  }
 }
 spin_unlock_bh(&priv->sta_lock);

 if (!cleared)
  IWL_DEBUG_INFO(priv,
          "No active stations found to be cleared\n");
}
