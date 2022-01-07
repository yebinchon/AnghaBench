
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {scalar_t__ num_stations; int sta_lock; TYPE_1__* stations; } ;
struct TYPE_2__ {int used; int * lq; } ;


 int IWLAGN_STATION_COUNT ;
 int IWL_STA_BCAST ;
 int IWL_STA_UCODE_ACTIVE ;
 scalar_t__ WARN_ON (int) ;
 int kfree (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iwl_dealloc_bcast_stations(struct iwl_priv *priv)
{
 int i;

 spin_lock_bh(&priv->sta_lock);
 for (i = 0; i < IWLAGN_STATION_COUNT; i++) {
  if (!(priv->stations[i].used & IWL_STA_BCAST))
   continue;

  priv->stations[i].used &= ~IWL_STA_UCODE_ACTIVE;
  priv->num_stations--;
  if (WARN_ON(priv->num_stations < 0))
   priv->num_stations = 0;
  kfree(priv->stations[i].lq);
  priv->stations[i].lq = ((void*)0);
 }
 spin_unlock_bh(&priv->sta_lock);
}
