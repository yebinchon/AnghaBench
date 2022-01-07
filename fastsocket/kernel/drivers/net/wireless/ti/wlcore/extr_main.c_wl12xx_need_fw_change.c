
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1271 {int fw_type; int last_vif_count; scalar_t__ state; int mr_fw_name; int flags; } ;
struct vif_counter_data {int counter; int cur_vif_running; } ;
typedef enum wl12xx_fw_type { ____Placeholder_wl12xx_fw_type } wl12xx_fw_type ;


 int WL1271_FLAG_VIF_CHANGE_IN_PROGRESS ;
 int WL12XX_FW_TYPE_MULTI ;
 int WL12XX_FW_TYPE_NORMAL ;
 scalar_t__ WLCORE_STATE_OFF ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool wl12xx_need_fw_change(struct wl1271 *wl,
      struct vif_counter_data vif_counter_data,
      bool add)
{
 enum wl12xx_fw_type current_fw = wl->fw_type;
 u8 vif_count = vif_counter_data.counter;

 if (test_bit(WL1271_FLAG_VIF_CHANGE_IN_PROGRESS, &wl->flags))
  return 0;


 if (add && !vif_counter_data.cur_vif_running)
  vif_count++;

 wl->last_vif_count = vif_count;


 if (wl->state == WLCORE_STATE_OFF)
  return 0;


 if (!wl->mr_fw_name)
  return 0;

 if (vif_count > 1 && current_fw == WL12XX_FW_TYPE_NORMAL)
  return 1;
 if (vif_count <= 1 && current_fw == WL12XX_FW_TYPE_MULTI)
  return 1;

 return 0;
}
