
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {int status; } ;
struct iwl_host_cmd {int flags; TYPE_1__* resp_pkt; int id; } ;
typedef scalar_t__ __le32 ;
struct TYPE_2__ {scalar_t__ data; } ;


 scalar_t__ CAN_ABORT_STATUS ;
 int CMD_SYNC ;
 int CMD_WANT_SKB ;
 int EIO ;
 int IWL_DEBUG_SCAN (struct iwl_priv*,char*,int ) ;
 int REPLY_SCAN_ABORT_CMD ;
 int STATUS_FW_ERROR ;
 int STATUS_READY ;
 int STATUS_SCAN_HW ;
 int iwl_dvm_send_cmd (struct iwl_priv*,struct iwl_host_cmd*) ;
 int iwl_free_resp (struct iwl_host_cmd*) ;
 int le32_to_cpu (scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int iwl_send_scan_abort(struct iwl_priv *priv)
{
 int ret;
 struct iwl_host_cmd cmd = {
  .id = REPLY_SCAN_ABORT_CMD,
  .flags = CMD_SYNC | CMD_WANT_SKB,
 };
 __le32 *status;




 if (!test_bit(STATUS_READY, &priv->status) ||
     !test_bit(STATUS_SCAN_HW, &priv->status) ||
     test_bit(STATUS_FW_ERROR, &priv->status))
  return -EIO;

 ret = iwl_dvm_send_cmd(priv, &cmd);
 if (ret)
  return ret;

 status = (void *)cmd.resp_pkt->data;
 if (*status != CAN_ABORT_STATUS) {






  IWL_DEBUG_SCAN(priv, "SCAN_ABORT ret %d.\n",
          le32_to_cpu(*status));
  ret = -EIO;
 }

 iwl_free_resp(&cmd);
 return ret;
}
