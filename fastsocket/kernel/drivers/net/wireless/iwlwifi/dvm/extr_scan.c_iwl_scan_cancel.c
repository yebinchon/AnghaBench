
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int abort_scan; int workqueue; } ;


 int IWL_DEBUG_SCAN (struct iwl_priv*,char*) ;
 int queue_work (int ,int *) ;

int iwl_scan_cancel(struct iwl_priv *priv)
{
 IWL_DEBUG_SCAN(priv, "Queuing abort scan\n");
 queue_work(priv->workqueue, &priv->abort_scan);
 return 0;
}
