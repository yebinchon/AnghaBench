
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
struct TYPE_5__ {int mem; } ;
struct wl1271 {int quirks; int ba_rx_session_count_max; int max_channels_5; int sched_scan_templ_id_5; int sched_scan_templ_id_2_4; int scan_templ_id_5; int scan_templ_id_2_4; TYPE_3__ chip; void* mr_fw_name; void* sr_fw_name; int plt_fw_name; TYPE_2__* ops; TYPE_1__ conf; } ;
struct TYPE_8__ {int mem_wl127x; } ;
struct TYPE_6__ {void* prepare_read; } ;






 int CMD_TEMPL_APP_PROBE_REQ_2_4_LEGACY ;
 int CMD_TEMPL_APP_PROBE_REQ_5_LEGACY ;
 int CMD_TEMPL_CFG_PROBE_REQ_2_4 ;
 int CMD_TEMPL_CFG_PROBE_REQ_5 ;
 int DEBUG_BOOT ;
 int ENODEV ;
 int WL127X_CHIP_VER ;
 void* WL127X_FW_NAME_MULTI ;
 void* WL127X_FW_NAME_SINGLE ;
 int WL127X_IFTYPE_MR_VER ;
 int WL127X_IFTYPE_SR_VER ;
 int WL127X_MAJOR_MR_VER ;
 int WL127X_MAJOR_SR_VER ;
 int WL127X_MINOR_MR_VER ;
 int WL127X_MINOR_SR_VER ;
 int WL127X_PLT_FW_NAME ;
 int WL127X_SUBTYPE_MR_VER ;
 int WL127X_SUBTYPE_SR_VER ;
 int WL128X_CHIP_VER ;
 void* WL128X_FW_NAME_MULTI ;
 void* WL128X_FW_NAME_SINGLE ;
 int WL128X_IFTYPE_MR_VER ;
 int WL128X_IFTYPE_SR_VER ;
 int WL128X_MAJOR_MR_VER ;
 int WL128X_MAJOR_SR_VER ;
 int WL128X_MINOR_MR_VER ;
 int WL128X_MINOR_SR_VER ;
 int WL128X_PLT_FW_NAME ;
 int WL128X_SUBTYPE_MR_VER ;
 int WL128X_SUBTYPE_SR_VER ;
 int WL12XX_MAX_CHANNELS_5GHZ ;
 int WL12XX_RX_BA_MAX_SESSIONS ;
 int WLCORE_QUIRK_AP_ZERO_SESSION_ID ;
 int WLCORE_QUIRK_DUAL_PROBE_TMPL ;
 int WLCORE_QUIRK_LEGACY_NVS ;
 int WLCORE_QUIRK_START_STA_FAILS ;
 int WLCORE_QUIRK_TKIP_HEADER_SPACE ;
 int WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN ;
 int memcpy (int *,int *,int) ;
 int wl1271_debug (int ,char*,int) ;
 int wl1271_warning (char*,int) ;
 void* wl127x_prepare_read ;
 TYPE_4__ wl12xx_default_priv_conf ;
 int wlcore_set_min_fw_ver (struct wl1271*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int wl12xx_identify_chip(struct wl1271 *wl)
{
 int ret = 0;

 switch (wl->chip.id) {
 case 131:
  wl1271_warning("chip id 0x%x (1271 PG10) support is obsolete",
          wl->chip.id);

  wl->quirks |= WLCORE_QUIRK_LEGACY_NVS |
         WLCORE_QUIRK_DUAL_PROBE_TMPL |
         WLCORE_QUIRK_TKIP_HEADER_SPACE |
         WLCORE_QUIRK_START_STA_FAILS |
         WLCORE_QUIRK_AP_ZERO_SESSION_ID;
  wl->sr_fw_name = WL127X_FW_NAME_SINGLE;
  wl->mr_fw_name = WL127X_FW_NAME_MULTI;
  memcpy(&wl->conf.mem, &wl12xx_default_priv_conf.mem_wl127x,
         sizeof(wl->conf.mem));


  wl->ops->prepare_read = wl127x_prepare_read;

  wlcore_set_min_fw_ver(wl, WL127X_CHIP_VER,
         WL127X_IFTYPE_SR_VER, WL127X_MAJOR_SR_VER,
         WL127X_SUBTYPE_SR_VER, WL127X_MINOR_SR_VER,
         WL127X_IFTYPE_MR_VER, WL127X_MAJOR_MR_VER,
         WL127X_SUBTYPE_MR_VER, WL127X_MINOR_MR_VER);
  break;

 case 130:
  wl1271_debug(DEBUG_BOOT, "chip id 0x%x (1271 PG20)",
        wl->chip.id);

  wl->quirks |= WLCORE_QUIRK_LEGACY_NVS |
         WLCORE_QUIRK_DUAL_PROBE_TMPL |
         WLCORE_QUIRK_TKIP_HEADER_SPACE |
         WLCORE_QUIRK_START_STA_FAILS |
         WLCORE_QUIRK_AP_ZERO_SESSION_ID;
  wl->plt_fw_name = WL127X_PLT_FW_NAME;
  wl->sr_fw_name = WL127X_FW_NAME_SINGLE;
  wl->mr_fw_name = WL127X_FW_NAME_MULTI;
  memcpy(&wl->conf.mem, &wl12xx_default_priv_conf.mem_wl127x,
         sizeof(wl->conf.mem));


  wl->ops->prepare_read = wl127x_prepare_read;

  wlcore_set_min_fw_ver(wl, WL127X_CHIP_VER,
         WL127X_IFTYPE_SR_VER, WL127X_MAJOR_SR_VER,
         WL127X_SUBTYPE_SR_VER, WL127X_MINOR_SR_VER,
         WL127X_IFTYPE_MR_VER, WL127X_MAJOR_MR_VER,
         WL127X_SUBTYPE_MR_VER, WL127X_MINOR_MR_VER);
  break;

 case 128:
  wl1271_debug(DEBUG_BOOT, "chip id 0x%x (1283 PG20)",
        wl->chip.id);
  wl->plt_fw_name = WL128X_PLT_FW_NAME;
  wl->sr_fw_name = WL128X_FW_NAME_SINGLE;
  wl->mr_fw_name = WL128X_FW_NAME_MULTI;


  wl->quirks |= WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN |
         WLCORE_QUIRK_DUAL_PROBE_TMPL |
         WLCORE_QUIRK_TKIP_HEADER_SPACE |
         WLCORE_QUIRK_START_STA_FAILS |
         WLCORE_QUIRK_AP_ZERO_SESSION_ID;

  wlcore_set_min_fw_ver(wl, WL128X_CHIP_VER,
         WL128X_IFTYPE_SR_VER, WL128X_MAJOR_SR_VER,
         WL128X_SUBTYPE_SR_VER, WL128X_MINOR_SR_VER,
         WL128X_IFTYPE_MR_VER, WL128X_MAJOR_MR_VER,
         WL128X_SUBTYPE_MR_VER, WL128X_MINOR_MR_VER);
  break;
 case 129:
 default:
  wl1271_warning("unsupported chip id: 0x%x", wl->chip.id);
  ret = -ENODEV;
  goto out;
 }


 wl->scan_templ_id_2_4 = CMD_TEMPL_APP_PROBE_REQ_2_4_LEGACY;
 wl->scan_templ_id_5 = CMD_TEMPL_APP_PROBE_REQ_5_LEGACY;
 wl->sched_scan_templ_id_2_4 = CMD_TEMPL_CFG_PROBE_REQ_2_4;
 wl->sched_scan_templ_id_5 = CMD_TEMPL_CFG_PROBE_REQ_5;
 wl->max_channels_5 = WL12XX_MAX_CHANNELS_5GHZ;
 wl->ba_rx_session_count_max = WL12XX_RX_BA_MAX_SESSIONS;
out:
 return ret;
}
