
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_scanreq_notification {int status; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {int dummy; } ;
struct iwl_device_cmd {int dummy; } ;


 int IWL_DEBUG_SCAN (struct iwl_priv*,char*,int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

__attribute__((used)) static int iwl_rx_reply_scan(struct iwl_priv *priv,
         struct iwl_rx_cmd_buffer *rxb,
         struct iwl_device_cmd *cmd)
{






 return 0;
}
