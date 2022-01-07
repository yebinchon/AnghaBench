
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_scan_cmd {TYPE_1__* direct_scan; } ;
struct cfg80211_scan_request {int n_ssids; TYPE_2__* ssids; } ;
struct TYPE_4__ {int ssid_len; int ssid; } ;
struct TYPE_3__ {int ssid; int len; int id; } ;


 int WLAN_EID_SSID ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void iwl_mvm_scan_fill_ssids(struct iwl_scan_cmd *cmd,
        struct cfg80211_scan_request *req)
{
 int fw_idx, req_idx;

 for (req_idx = req->n_ssids - 1, fw_idx = 0; req_idx > 0;
      req_idx--, fw_idx++) {
  cmd->direct_scan[fw_idx].id = WLAN_EID_SSID;
  cmd->direct_scan[fw_idx].len = req->ssids[req_idx].ssid_len;
  memcpy(cmd->direct_scan[fw_idx].ssid,
         req->ssids[req_idx].ssid,
         req->ssids[req_idx].ssid_len);
 }
}
