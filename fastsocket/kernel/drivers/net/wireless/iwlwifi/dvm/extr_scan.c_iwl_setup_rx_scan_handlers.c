
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int * rx_handlers; } ;


 size_t REPLY_SCAN_CMD ;
 size_t SCAN_COMPLETE_NOTIFICATION ;
 size_t SCAN_RESULTS_NOTIFICATION ;
 size_t SCAN_START_NOTIFICATION ;
 int iwl_rx_reply_scan ;
 int iwl_rx_scan_complete_notif ;
 int iwl_rx_scan_results_notif ;
 int iwl_rx_scan_start_notif ;

void iwl_setup_rx_scan_handlers(struct iwl_priv *priv)
{

 priv->rx_handlers[REPLY_SCAN_CMD] = iwl_rx_reply_scan;
 priv->rx_handlers[SCAN_START_NOTIFICATION] = iwl_rx_scan_start_notif;
 priv->rx_handlers[SCAN_RESULTS_NOTIFICATION] =
     iwl_rx_scan_results_notif;
 priv->rx_handlers[SCAN_COMPLETE_NOTIFICATION] =
     iwl_rx_scan_complete_notif;
}
