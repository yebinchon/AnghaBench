
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lbs_private {int sync_channel; int mode; int mesh_dev; int tx_pending_len; int mesh_open; int mesh_connect_status; int mesh_autostart_enabled; int needtowakeup; int psstate; } ;


 int IW_MODE_ADHOC ;
 int LBS_CONNECTED ;
 int LBS_DEB_CMD ;
 int PS_STATE_AWAKE ;
 int PS_STATE_FULL_POWER ;
 int PS_STATE_PRE_SLEEP ;
 int handle_mic_failureevent (struct lbs_private*,int const) ;
 int lbs_deb_cmd (char*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_mac_event_disconnected (struct lbs_private*) ;
 int lbs_pr_alert (char*,...) ;
 int lbs_pr_info (char*) ;
 int lbs_ps_confirm_sleep (struct lbs_private*) ;
 int lbs_ps_wakeup (struct lbs_private*,int ) ;
 int lbs_send_confirmwake (struct lbs_private*) ;
 int netif_carrier_on (int ) ;
 int netif_wake_queue (int ) ;
 int schedule_work (int *) ;

int lbs_process_event(struct lbs_private *priv, u32 event)
{
 int ret = 0;

 lbs_deb_enter(LBS_DEB_CMD);

 switch (event) {
 case 139:
  lbs_deb_cmd("EVENT: link sensed\n");
  break;

 case 144:
  lbs_deb_cmd("EVENT: deauthenticated\n");
  lbs_mac_event_disconnected(priv);
  break;

 case 143:
  lbs_deb_cmd("EVENT: disassociated\n");
  lbs_mac_event_disconnected(priv);
  break;

 case 140:
  lbs_deb_cmd("EVENT: link lost\n");
  lbs_mac_event_disconnected(priv);
  break;

 case 132:
  lbs_deb_cmd("EVENT: ps sleep\n");


  if (priv->psstate == PS_STATE_FULL_POWER) {
   lbs_deb_cmd(
          "EVENT: in FULL POWER mode, ignoreing PS_SLEEP\n");
   break;
  }
  priv->psstate = PS_STATE_PRE_SLEEP;

  lbs_ps_confirm_sleep(priv);

  break;

 case 142:
  lbs_deb_cmd("EVENT: host awake\n");
  lbs_send_confirmwake(priv);
  break;

 case 133:
  lbs_deb_cmd("EVENT: ps awake\n");

  if (priv->psstate == PS_STATE_FULL_POWER) {
   lbs_deb_cmd(
          "EVENT: In FULL POWER mode - ignore PS AWAKE\n");
   break;
  }

  priv->psstate = PS_STATE_AWAKE;

  if (priv->needtowakeup) {






   lbs_deb_cmd("waking up ...\n");
   lbs_ps_wakeup(priv, 0);
  }
  break;

 case 134:
  lbs_deb_cmd("EVENT: UNICAST MIC ERROR\n");
  handle_mic_failureevent(priv, 134);
  break;

 case 135:
  lbs_deb_cmd("EVENT: MULTICAST MIC ERROR\n");
  handle_mic_failureevent(priv, 135);
  break;

 case 136:
  lbs_deb_cmd("EVENT: MIB CHANGED\n");
  break;
 case 141:
  lbs_deb_cmd("EVENT: INIT DONE\n");
  break;
 case 145:
  lbs_deb_cmd("EVENT: ADHOC beacon lost\n");
  break;
 case 130:
  lbs_pr_alert("EVENT: rssi low\n");
  break;
 case 128:
  lbs_pr_alert("EVENT: snr low\n");
  break;
 case 138:
  lbs_pr_alert("EVENT: max fail\n");
  break;
 case 131:
  lbs_pr_alert("EVENT: rssi high\n");
  break;
 case 129:
  lbs_pr_alert("EVENT: snr high\n");
  break;

 case 137:

  if (!priv->mesh_autostart_enabled) {
   lbs_pr_info("EVENT: MESH_AUTO_STARTED (ignoring)\n");
   break;
  }
  lbs_pr_info("EVENT: MESH_AUTO_STARTED\n");
  priv->mesh_connect_status = LBS_CONNECTED;
  if (priv->mesh_open) {
   netif_carrier_on(priv->mesh_dev);
   if (!priv->tx_pending_len)
    netif_wake_queue(priv->mesh_dev);
  }
  priv->mode = IW_MODE_ADHOC;
  schedule_work(&priv->sync_channel);
  break;

 default:
  lbs_pr_alert("EVENT: unknown event id %d\n", event);
  break;
 }

 lbs_deb_leave_args(LBS_DEB_CMD, "ret %d", ret);
 return ret;
}
