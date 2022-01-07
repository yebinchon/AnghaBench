
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int role_id; } ;
struct wl1271_cmd_sched_scan_stop {int tag; int role_id; } ;
struct wl1271 {int dummy; } ;


 int CMD_STOP_PERIODIC_SCAN ;
 int DEBUG_CMD ;
 int GFP_KERNEL ;
 int WL1271_SCAN_DEFAULT_TAG ;
 int kfree (struct wl1271_cmd_sched_scan_stop*) ;
 struct wl1271_cmd_sched_scan_stop* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl1271_cmd_sched_scan_stop*,int,int ) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_error (char*) ;

void wl12xx_scan_sched_scan_stop(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct wl1271_cmd_sched_scan_stop *stop;
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd periodic scan stop");


 stop = kzalloc(sizeof(*stop), GFP_KERNEL);
 if (!stop) {
  wl1271_error("failed to alloc memory to send sched scan stop");
  return;
 }

 stop->role_id = wlvif->role_id;
 stop->tag = WL1271_SCAN_DEFAULT_TAG;

 ret = wl1271_cmd_send(wl, CMD_STOP_PERIODIC_SCAN, stop,
         sizeof(*stop), 0);
 if (ret < 0) {
  wl1271_error("failed to send sched scan stop command");
  goto out_free;
 }

out_free:
 kfree(stop);
}
