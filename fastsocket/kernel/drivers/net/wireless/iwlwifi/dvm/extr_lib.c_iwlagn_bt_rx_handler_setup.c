
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int * rx_handlers; } ;


 size_t REPLY_BT_COEX_PROFILE_NOTIF ;
 int iwlagn_bt_coex_profile_notif ;

void iwlagn_bt_rx_handler_setup(struct iwl_priv *priv)
{
 priv->rx_handlers[REPLY_BT_COEX_PROFILE_NOTIF] =
  iwlagn_bt_coex_profile_notif;
}
