
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {int sta_lock; TYPE_1__* stations; } ;
struct iwl_link_quality_cmd {int dummy; } ;
struct TYPE_2__ {struct iwl_link_quality_cmd* lq; int used; } ;


 int EINVAL ;
 int ENOMEM ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 size_t IWL_INVALID_STATION ;
 int IWL_STA_BCAST ;
 int IWL_STA_DRIVER_ACTIVE ;
 int iwl_bcast_addr ;
 size_t iwl_prep_station (struct iwl_priv*,struct iwl_rxon_context*,int ,int,int *) ;
 struct iwl_link_quality_cmd* iwl_sta_alloc_lq (struct iwl_priv*,struct iwl_rxon_context*,size_t) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iwlagn_alloc_bcast_station(struct iwl_priv *priv,
          struct iwl_rxon_context *ctx)
{
 struct iwl_link_quality_cmd *link_cmd;
 u8 sta_id;

 spin_lock_bh(&priv->sta_lock);
 sta_id = iwl_prep_station(priv, ctx, iwl_bcast_addr, 0, ((void*)0));
 if (sta_id == IWL_INVALID_STATION) {
  IWL_ERR(priv, "Unable to prepare broadcast station\n");
  spin_unlock_bh(&priv->sta_lock);

  return -EINVAL;
 }

 priv->stations[sta_id].used |= IWL_STA_DRIVER_ACTIVE;
 priv->stations[sta_id].used |= IWL_STA_BCAST;
 spin_unlock_bh(&priv->sta_lock);

 link_cmd = iwl_sta_alloc_lq(priv, ctx, sta_id);
 if (!link_cmd) {
  IWL_ERR(priv,
   "Unable to initialize rate scaling for bcast station.\n");
  return -ENOMEM;
 }

 spin_lock_bh(&priv->sta_lock);
 priv->stations[sta_id].lq = link_cmd;
 spin_unlock_bh(&priv->sta_lock);

 return 0;
}
