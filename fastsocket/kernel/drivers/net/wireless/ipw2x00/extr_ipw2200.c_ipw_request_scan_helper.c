
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ipw_scan_request_ext {int* channels_list; int full_scan_index; void** dwell_time; } ;
struct ipw_priv {int status; scalar_t__ direct_scan_ssid_len; int config; int channel; scalar_t__ essid_len; int mutex; int scan_check; int essid; int direct_scan_ssid; TYPE_1__* ieee; } ;
typedef int scan ;
struct TYPE_3__ {scalar_t__ iw_mode; } ;


 int CFG_SPEED_SCAN ;
 int CFG_STATIC_ESSID ;
 int IPW_A_MODE ;
 int IPW_B_MODE ;
 int IPW_DEBUG_HC (char*,...) ;
 int IPW_DEBUG_WX (char*) ;
 size_t IPW_SCAN_ACTIVE_BROADCAST_AND_DIRECT_SCAN ;
 size_t IPW_SCAN_ACTIVE_BROADCAST_SCAN ;
 size_t IPW_SCAN_ACTIVE_DIRECT_SCAN ;
 int IPW_SCAN_CHECK_WATCHDOG ;
 size_t IPW_SCAN_PASSIVE_FULL_DWELL_SCAN ;
 scalar_t__ IW_MODE_MONITOR ;
 int IW_SCAN_TYPE_PASSIVE ;


 int STATUS_ASSOCIATED ;
 int STATUS_DIRECT_SCAN_PENDING ;
 int STATUS_EXIT_PENDING ;
 int STATUS_INIT ;
 int STATUS_RF_KILL_MASK ;
 int STATUS_ROAMING ;
 int STATUS_SCANNING ;
 int STATUS_SCAN_ABORTING ;
 int STATUS_SCAN_FORCED ;
 int STATUS_SCAN_PENDING ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int ipw_add_scan_channels (struct ipw_priv*,struct ipw_scan_request_ext*,int) ;
 int ipw_passive_dwell_time (struct ipw_priv*) ;
 int ipw_send_scan_request_ext (struct ipw_priv*,struct ipw_scan_request_ext*) ;
 int ipw_send_ssid (struct ipw_priv*,int ,scalar_t__) ;
 int ipw_set_scan_type (struct ipw_scan_request_ext*,int,size_t) ;
 int le32_to_cpu (int ) ;
 int libipw_get_scans (TYPE_1__*) ;
 int libipw_is_valid_channel (TYPE_1__*,int) ;
 int memset (struct ipw_scan_request_ext*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int ipw_request_scan_helper(struct ipw_priv *priv, int type, int direct)
{
 struct ipw_scan_request_ext scan;
 int err = 0, scan_type;

 if (!(priv->status & STATUS_INIT) ||
     (priv->status & STATUS_EXIT_PENDING))
  return 0;

 mutex_lock(&priv->mutex);

 if (direct && (priv->direct_scan_ssid_len == 0)) {
  IPW_DEBUG_HC("Direct scan requested but no SSID to scan for\n");
  priv->status &= ~STATUS_DIRECT_SCAN_PENDING;
  goto done;
 }

 if (priv->status & STATUS_SCANNING) {
  IPW_DEBUG_HC("Concurrent scan requested.  Queuing.\n");
  priv->status |= direct ? STATUS_DIRECT_SCAN_PENDING :
     STATUS_SCAN_PENDING;
  goto done;
 }

 if (!(priv->status & STATUS_SCAN_FORCED) &&
     priv->status & STATUS_SCAN_ABORTING) {
  IPW_DEBUG_HC("Scan request while abort pending.  Queuing.\n");
  priv->status |= direct ? STATUS_DIRECT_SCAN_PENDING :
     STATUS_SCAN_PENDING;
  goto done;
 }

 if (priv->status & STATUS_RF_KILL_MASK) {
  IPW_DEBUG_HC("Queuing scan due to RF Kill activation\n");
  priv->status |= direct ? STATUS_DIRECT_SCAN_PENDING :
     STATUS_SCAN_PENDING;
  goto done;
 }

 memset(&scan, 0, sizeof(scan));
 scan.full_scan_index = cpu_to_le32(libipw_get_scans(priv->ieee));

 if (type == IW_SCAN_TYPE_PASSIVE) {
  IPW_DEBUG_WX("use passive scanning\n");
  scan_type = IPW_SCAN_PASSIVE_FULL_DWELL_SCAN;
  scan.dwell_time[IPW_SCAN_PASSIVE_FULL_DWELL_SCAN] =
   cpu_to_le16(ipw_passive_dwell_time(priv));
  ipw_add_scan_channels(priv, &scan, scan_type);
  goto send_request;
 }


 if (priv->config & CFG_SPEED_SCAN)
  scan.dwell_time[IPW_SCAN_ACTIVE_BROADCAST_SCAN] =
   cpu_to_le16(30);
 else
  scan.dwell_time[IPW_SCAN_ACTIVE_BROADCAST_SCAN] =
   cpu_to_le16(20);

 scan.dwell_time[IPW_SCAN_ACTIVE_BROADCAST_AND_DIRECT_SCAN] =
  cpu_to_le16(20);

 scan.dwell_time[IPW_SCAN_PASSIVE_FULL_DWELL_SCAN] =
  cpu_to_le16(ipw_passive_dwell_time(priv));
 scan.dwell_time[IPW_SCAN_ACTIVE_DIRECT_SCAN] = cpu_to_le16(20);
  if (direct) {
   err = ipw_send_ssid(priv, priv->direct_scan_ssid,
                       priv->direct_scan_ssid_len);
   if (err) {
    IPW_DEBUG_HC("Attempt to send SSID command  "
          "failed\n");
    goto done;
   }

   scan_type = IPW_SCAN_ACTIVE_BROADCAST_AND_DIRECT_SCAN;
  } else if ((priv->status & STATUS_ROAMING)
      || (!(priv->status & STATUS_ASSOCIATED)
          && (priv->config & CFG_STATIC_ESSID)
          && (le32_to_cpu(scan.full_scan_index) % 2))) {
   err = ipw_send_ssid(priv, priv->essid, priv->essid_len);
   if (err) {
    IPW_DEBUG_HC("Attempt to send SSID command "
          "failed.\n");
    goto done;
   }

   scan_type = IPW_SCAN_ACTIVE_BROADCAST_AND_DIRECT_SCAN;
  } else
   scan_type = IPW_SCAN_ACTIVE_BROADCAST_SCAN;

  ipw_add_scan_channels(priv, &scan, scan_type);




send_request:
 err = ipw_send_scan_request_ext(priv, &scan);
 if (err) {
  IPW_DEBUG_HC("Sending scan command failed: %08X\n", err);
  goto done;
 }

 priv->status |= STATUS_SCANNING;
 if (direct) {
  priv->status &= ~STATUS_DIRECT_SCAN_PENDING;
  priv->direct_scan_ssid_len = 0;
 } else
  priv->status &= ~STATUS_SCAN_PENDING;

 schedule_delayed_work(&priv->scan_check, IPW_SCAN_CHECK_WATCHDOG);
done:
 mutex_unlock(&priv->mutex);
 return err;
}
