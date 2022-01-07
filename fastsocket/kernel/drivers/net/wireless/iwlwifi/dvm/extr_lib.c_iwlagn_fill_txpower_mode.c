
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_rxon_context {TYPE_1__* vif; } ;
struct iwl_priv {int reduced_txpower; int bt_valid; struct iwl_rxon_context* contexts; } ;
struct iwl_bt_uart_msg {int frame3; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int BT_DISABLE_REDUCED_TXPOWER_THRESHOLD ;
 int BT_ENABLE_REDUCED_TXPOWER_THRESHOLD ;
 int BT_UART_MSG_FRAME3A2DP_MSK ;
 int BT_UART_MSG_FRAME3ACL_MSK ;
 int BT_UART_MSG_FRAME3OBEX_MSK ;
 int BT_UART_MSG_FRAME3SCOESCO_MSK ;
 int BT_UART_MSG_FRAME3SNIFF_MSK ;
 int IWLAGN_BT_VALID_REDUCED_TX_PWR ;
 int IWL_DEBUG_COEX (struct iwl_priv*,char*) ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*) ;
 size_t IWL_RXON_CTX_BSS ;
 int IWL_RXON_CTX_PAN ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int ieee80211_ave_rssi (TYPE_1__*) ;
 scalar_t__ iwl_is_associated (struct iwl_priv*,int ) ;

__attribute__((used)) static bool iwlagn_fill_txpower_mode(struct iwl_priv *priv,
    struct iwl_bt_uart_msg *uart_msg)
{
 bool need_update = 0;
 struct iwl_rxon_context *ctx = &priv->contexts[IWL_RXON_CTX_BSS];
 int ave_rssi;

 if (!ctx->vif || (ctx->vif->type != NL80211_IFTYPE_STATION)) {
  IWL_DEBUG_INFO(priv, "BSS ctx not active or not in sta mode\n");
  return 0;
 }

 ave_rssi = ieee80211_ave_rssi(ctx->vif);
 if (!ave_rssi) {

  IWL_DEBUG_COEX(priv, "no rssi data available\n");
  return need_update;
 }
 if (!priv->reduced_txpower &&
     !iwl_is_associated(priv, IWL_RXON_CTX_PAN) &&
     (ave_rssi > BT_ENABLE_REDUCED_TXPOWER_THRESHOLD) &&
     (uart_msg->frame3 & (BT_UART_MSG_FRAME3ACL_MSK |
     BT_UART_MSG_FRAME3OBEX_MSK)) &&
     !(uart_msg->frame3 & (BT_UART_MSG_FRAME3SCOESCO_MSK |
     BT_UART_MSG_FRAME3SNIFF_MSK | BT_UART_MSG_FRAME3A2DP_MSK))) {

  priv->reduced_txpower = 1;
  priv->bt_valid |= IWLAGN_BT_VALID_REDUCED_TX_PWR;
  need_update = 1;
 } else if (priv->reduced_txpower &&
     (iwl_is_associated(priv, IWL_RXON_CTX_PAN) ||
     (ave_rssi < BT_DISABLE_REDUCED_TXPOWER_THRESHOLD) ||
     (uart_msg->frame3 & (BT_UART_MSG_FRAME3SCOESCO_MSK |
     BT_UART_MSG_FRAME3SNIFF_MSK | BT_UART_MSG_FRAME3A2DP_MSK)) ||
     !(uart_msg->frame3 & (BT_UART_MSG_FRAME3ACL_MSK |
     BT_UART_MSG_FRAME3OBEX_MSK)))) {

  priv->reduced_txpower = 0;
  priv->bt_valid |= IWLAGN_BT_VALID_REDUCED_TX_PWR;
  need_update = 1;
 }

 return need_update;
}
