
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ieee80211_vif {int type; } ;
struct TYPE_8__ {int cmd; scalar_t__ len; } ;
struct TYPE_5__ {int gpio; } ;
struct carl9170_rsp {TYPE_4__ hdr; TYPE_1__ gpio; } ;
struct TYPE_6__ {int pbc_state; int pbc; } ;
struct ar9170 {TYPE_3__* hw; int fw_boot_wait; TYPE_2__ wps; } ;
struct TYPE_7__ {int wiphy; } ;


 int AR9170_GPIO_PORT_WPS_BUTTON_PRESSED ;
 int CARL9170_CMD_ASYNC_FLAG ;
 int CARL9170_RR_WATCHDOG ;



 int CARL9170_RSP_FLAG ;







 int DUMP_PREFIX_NONE ;
 int KEY_WPS_BUTTON ;




 int carl9170_cmd_callback (struct ar9170*,scalar_t__,void*) ;
 int carl9170_dbg_message (struct ar9170*,char*,scalar_t__) ;
 struct ieee80211_vif* carl9170_get_main_vif (struct ar9170*) ;
 int carl9170_handle_ps (struct ar9170*,struct carl9170_rsp*) ;
 int carl9170_restart (struct ar9170*,int ) ;
 int carl9170_tx_process_status (struct ar9170*,struct carl9170_rsp*) ;
 int carl9170_update_beacon (struct ar9170*,int) ;
 int complete (int *) ;
 int cpu_to_le32 (int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 scalar_t__ net_ratelimit () ;
 int print_hex_dump_bytes (char*,int ,void*,scalar_t__) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;
 int wiphy_dbg (int ,char*,scalar_t__) ;
 int wiphy_err (int ,char*,int,...) ;
 int wiphy_info (int ,char*) ;

void carl9170_handle_command_response(struct ar9170 *ar, void *buf, u32 len)
{
 struct carl9170_rsp *cmd = buf;
 struct ieee80211_vif *vif;

 if ((cmd->hdr.cmd & CARL9170_RSP_FLAG) != CARL9170_RSP_FLAG) {
  if (!(cmd->hdr.cmd & CARL9170_CMD_ASYNC_FLAG))
   carl9170_cmd_callback(ar, len, buf);

  return;
 }

 if (unlikely(cmd->hdr.len != (len - 4))) {
  if (net_ratelimit()) {
   wiphy_err(ar->hw->wiphy, "FW: received over-/under"
    "sized event %x (%d, but should be %d).\n",
          cmd->hdr.cmd, cmd->hdr.len, len - 4);

   print_hex_dump_bytes("dump:", DUMP_PREFIX_NONE,
          buf, len);
  }

  return;
 }


 switch (cmd->hdr.cmd) {
 case 136:

  rcu_read_lock();
  vif = carl9170_get_main_vif(ar);

  if (!vif) {
   rcu_read_unlock();
   break;
  }

  switch (vif->type) {
  case 128:
   carl9170_handle_ps(ar, cmd);
   break;

  case 130:
  case 131:
  case 129:
   carl9170_update_beacon(ar, 1);
   break;

  default:
   break;
  }
  rcu_read_unlock();

  break;


 case 133:

  carl9170_tx_process_status(ar, cmd);
  break;

 case 140:
  break;

 case 141:

  break;

 case 132:

  carl9170_restart(ar, CARL9170_RR_WATCHDOG);
  break;

 case 134:

  carl9170_dbg_message(ar, (char *)buf + 4, len - 4);
  break;

 case 137:
  wiphy_dbg(ar->hw->wiphy, "FW: HD %d\n", len - 4);
  print_hex_dump_bytes("FW:", DUMP_PREFIX_NONE,
         (char *)buf + 4, len - 4);
  break;

 case 135:
  if (!net_ratelimit())
   break;

  wiphy_info(ar->hw->wiphy, "FW: RADAR! Please report this "
         "incident to linux-wireless@vger.kernel.org !\n");
  break;

 case 138:
  break;

 case 139:
  complete(&ar->fw_boot_wait);
  break;

 default:
  wiphy_err(ar->hw->wiphy, "FW: received unhandled event %x\n",
   cmd->hdr.cmd);
  print_hex_dump_bytes("dump:", DUMP_PREFIX_NONE, buf, len);
  break;
 }
}
