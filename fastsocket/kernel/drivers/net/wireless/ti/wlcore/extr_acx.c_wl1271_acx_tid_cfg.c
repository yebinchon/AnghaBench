
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_tid_config {void** apsd_conf; void* ack_policy; void* ps_scheme; void* tsid; void* channel_type; void* queue_id; int role_id; } ;


 int ACX_TID_CFG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* cpu_to_le32 (int ) ;
 int kfree (struct acx_tid_config*) ;
 struct acx_tid_config* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_tid_config*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_tid_cfg(struct wl1271 *wl, struct wl12xx_vif *wlvif,
         u8 queue_id, u8 channel_type,
         u8 tsid, u8 ps_scheme, u8 ack_policy,
         u32 apsd_conf0, u32 apsd_conf1)
{
 struct acx_tid_config *acx;
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx tid config");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);

 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->role_id = wlvif->role_id;
 acx->queue_id = queue_id;
 acx->channel_type = channel_type;
 acx->tsid = tsid;
 acx->ps_scheme = ps_scheme;
 acx->ack_policy = ack_policy;
 acx->apsd_conf[0] = cpu_to_le32(apsd_conf0);
 acx->apsd_conf[1] = cpu_to_le32(apsd_conf1);

 ret = wl1271_cmd_configure(wl, ACX_TID_CFG, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("Setting of tid config failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
