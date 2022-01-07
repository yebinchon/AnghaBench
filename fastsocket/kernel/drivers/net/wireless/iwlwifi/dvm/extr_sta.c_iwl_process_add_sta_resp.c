
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_6__ {int flags; } ;
struct iwl_rx_packet {TYPE_1__ hdr; scalar_t__ data; } ;
struct iwl_priv {int sta_lock; TYPE_4__* stations; } ;
struct TYPE_10__ {size_t sta_id; int addr; } ;
struct iwl_addsta_cmd {TYPE_5__ sta; } ;
struct iwl_add_sta_resp {int status; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {scalar_t__ mode; TYPE_2__ sta; } ;
struct TYPE_9__ {TYPE_3__ sta; } ;






 int EIO ;
 int IWL_CMD_FAILED_MSK ;
 int IWL_DEBUG_ASSOC (struct iwl_priv*,char*,int) ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*,...) ;
 int IWL_ERR (struct iwl_priv*,char*,size_t) ;
 scalar_t__ STA_CONTROL_MODIFY_MSK ;
 int iwl_sta_ucode_activate (struct iwl_priv*,size_t) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iwl_process_add_sta_resp(struct iwl_priv *priv,
        struct iwl_addsta_cmd *addsta,
        struct iwl_rx_packet *pkt)
{
 struct iwl_add_sta_resp *add_sta_resp = (void *)pkt->data;
 u8 sta_id = addsta->sta.sta_id;
 int ret = -EIO;

 if (pkt->hdr.flags & IWL_CMD_FAILED_MSK) {
  IWL_ERR(priv, "Bad return from REPLY_ADD_STA (0x%08X)\n",
   pkt->hdr.flags);
  return ret;
 }

 IWL_DEBUG_INFO(priv, "Processing response for adding station %u\n",
         sta_id);

 spin_lock_bh(&priv->sta_lock);

 switch (add_sta_resp->status) {
 case 128:
  IWL_DEBUG_INFO(priv, "REPLY_ADD_STA PASSED\n");
  ret = iwl_sta_ucode_activate(priv, sta_id);
  break;
 case 129:
  IWL_ERR(priv, "Adding station %d failed, no room in table.\n",
   sta_id);
  break;
 case 130:
  IWL_ERR(priv, "Adding station %d failed, no block ack "
   "resource.\n", sta_id);
  break;
 case 131:
  IWL_ERR(priv, "Attempting to modify non-existing station %d\n",
   sta_id);
  break;
 default:
  IWL_DEBUG_ASSOC(priv, "Received REPLY_ADD_STA:(0x%08X)\n",
    add_sta_resp->status);
  break;
 }

 IWL_DEBUG_INFO(priv, "%s station id %u addr %pM\n",
         priv->stations[sta_id].sta.mode ==
         STA_CONTROL_MODIFY_MSK ? "Modified" : "Added",
         sta_id, priv->stations[sta_id].sta.sta.addr);
 IWL_DEBUG_INFO(priv, "%s station according to cmd buffer %pM\n",
         priv->stations[sta_id].sta.mode ==
         STA_CONTROL_MODIFY_MSK ? "Modified" : "Added",
         addsta->sta.addr);
 spin_unlock_bh(&priv->sta_lock);

 return ret;
}
