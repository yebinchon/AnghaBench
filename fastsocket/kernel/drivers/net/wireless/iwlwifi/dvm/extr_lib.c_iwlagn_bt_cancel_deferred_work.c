
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int bt_traffic_change_work; } ;


 int cancel_work_sync (int *) ;

void iwlagn_bt_cancel_deferred_work(struct iwl_priv *priv)
{
 cancel_work_sync(&priv->bt_traffic_change_work);
}
