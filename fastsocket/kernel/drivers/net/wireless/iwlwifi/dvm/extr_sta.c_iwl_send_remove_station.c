
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int flags; } ;
struct iwl_rx_packet {scalar_t__ data; TYPE_1__ hdr; } ;
struct iwl_rem_sta_resp {int status; } ;
struct iwl_rem_sta_cmd {int num_sta; int addr; } ;
struct iwl_priv {int sta_lock; } ;
struct iwl_host_cmd {struct iwl_rx_packet* resp_pkt; int flags; int data; int len; int id; } ;
typedef int rm_sta_cmd ;


 int CMD_SYNC ;
 int CMD_WANT_SKB ;
 int EIO ;
 int ETH_ALEN ;
 int IWL_CMD_FAILED_MSK ;
 int IWL_DEBUG_ASSOC (struct iwl_priv*,char*) ;
 int IWL_ERR (struct iwl_priv*,char*,...) ;

 int REPLY_REMOVE_STA ;
 int iwl_dvm_send_cmd (struct iwl_priv*,struct iwl_host_cmd*) ;
 int iwl_free_resp (struct iwl_host_cmd*) ;
 int iwl_sta_ucode_deactivate (struct iwl_priv*,int) ;
 int memcpy (int *,int const*,int ) ;
 int memset (struct iwl_rem_sta_cmd*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iwl_send_remove_station(struct iwl_priv *priv,
       const u8 *addr, int sta_id,
       bool temporary)
{
 struct iwl_rx_packet *pkt;
 int ret;
 struct iwl_rem_sta_cmd rm_sta_cmd;

 struct iwl_host_cmd cmd = {
  .id = REPLY_REMOVE_STA,
  .len = { sizeof(struct iwl_rem_sta_cmd), },
  .flags = CMD_SYNC,
  .data = { &rm_sta_cmd, },
 };

 memset(&rm_sta_cmd, 0, sizeof(rm_sta_cmd));
 rm_sta_cmd.num_sta = 1;
 memcpy(&rm_sta_cmd.addr, addr, ETH_ALEN);

 cmd.flags |= CMD_WANT_SKB;

 ret = iwl_dvm_send_cmd(priv, &cmd);

 if (ret)
  return ret;

 pkt = cmd.resp_pkt;
 if (pkt->hdr.flags & IWL_CMD_FAILED_MSK) {
  IWL_ERR(priv, "Bad return from REPLY_REMOVE_STA (0x%08X)\n",
     pkt->hdr.flags);
  ret = -EIO;
 }

 if (!ret) {
  struct iwl_rem_sta_resp *rem_sta_resp = (void *)pkt->data;
  switch (rem_sta_resp->status) {
  case 128:
   if (!temporary) {
    spin_lock_bh(&priv->sta_lock);
    iwl_sta_ucode_deactivate(priv, sta_id);
    spin_unlock_bh(&priv->sta_lock);
   }
   IWL_DEBUG_ASSOC(priv, "REPLY_REMOVE_STA PASSED\n");
   break;
  default:
   ret = -EIO;
   IWL_ERR(priv, "REPLY_REMOVE_STA failed\n");
   break;
  }
 }
 iwl_free_resp(&cmd);

 return ret;
}
