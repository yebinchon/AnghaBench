
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mib_mac_mgmt {int country_string; int multi_domain_capability_enabled; int multi_domain_capability_implemented; int res; int ibss_change; int power_mgmt_mode; int current_bss_type; int current_essid; int current_bssid; int CFP_period; int DTIM_period; int privacy_option_implemented; int CFP_mode; int ATIM_window; int station_id; int medium_occupancy_limit; int CFP_max_duration; int beacon_period; } ;
struct at76_priv {TYPE_1__* hw; int udev; } ;
struct TYPE_2__ {int wiphy; } ;


 int DBG_MIB ;
 int GFP_KERNEL ;
 int IW_ESSID_MAX_SIZE ;
 int MIB_MAC_MGMT ;
 int at76_dbg (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int at76_get_mib (int ,int ,struct mib_mac_mgmt*,int) ;
 int hex2str (int ,int ) ;
 int kfree (struct mib_mac_mgmt*) ;
 struct mib_mac_mgmt* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int wiphy_err (int ,char*,int) ;
 int wiphy_name (int ) ;

__attribute__((used)) static void at76_dump_mib_mac_mgmt(struct at76_priv *priv)
{
 int ret;
 struct mib_mac_mgmt *m = kmalloc(sizeof(struct mib_mac_mgmt),
      GFP_KERNEL);

 if (!m)
  return;

 ret = at76_get_mib(priv->udev, MIB_MAC_MGMT, m,
      sizeof(struct mib_mac_mgmt));
 if (ret < 0) {
  wiphy_err(priv->hw->wiphy,
     "at76_get_mib (MAC_MGMT) failed: %d\n", ret);
  goto exit;
 }

 at76_dbg(DBG_MIB, "%s: MIB MAC_MGMT: beacon_period %d CFP_max_duration "
   "%d medium_occupancy_limit %d station_id 0x%x ATIM_window %d "
   "CFP_mode %d privacy_opt_impl %d DTIM_period %d CFP_period %d "
   "current_bssid %pM current_essid %s current_bss_type %d "
   "pm_mode %d ibss_change %d res %d "
   "multi_domain_capability_implemented %d "
   "international_roaming %d country_string %.3s",
   wiphy_name(priv->hw->wiphy), le16_to_cpu(m->beacon_period),
   le16_to_cpu(m->CFP_max_duration),
   le16_to_cpu(m->medium_occupancy_limit),
   le16_to_cpu(m->station_id), le16_to_cpu(m->ATIM_window),
   m->CFP_mode, m->privacy_option_implemented, m->DTIM_period,
   m->CFP_period, m->current_bssid,
   hex2str(m->current_essid, IW_ESSID_MAX_SIZE),
   m->current_bss_type, m->power_mgmt_mode, m->ibss_change,
   m->res, m->multi_domain_capability_implemented,
   m->multi_domain_capability_enabled, m->country_string);
exit:
 kfree(m);
}
