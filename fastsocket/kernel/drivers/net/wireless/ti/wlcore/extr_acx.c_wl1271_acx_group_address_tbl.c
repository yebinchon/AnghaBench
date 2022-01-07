
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_dot11_grp_addr_tbl {int enabled; int num_groups; int mac_table; int role_id; } ;


 int DEBUG_ACX ;
 int DOT11_GROUP_ADDRESS_TBL ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int kfree (struct acx_dot11_grp_addr_tbl*) ;
 struct acx_dot11_grp_addr_tbl* kzalloc (int,int ) ;
 int memcpy (int ,void*,int) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_dot11_grp_addr_tbl*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_group_address_tbl(struct wl1271 *wl, struct wl12xx_vif *wlvif,
     bool enable, void *mc_list, u32 mc_list_len)
{
 struct acx_dot11_grp_addr_tbl *acx;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx group address tbl");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }


 acx->role_id = wlvif->role_id;
 acx->enabled = enable;
 acx->num_groups = mc_list_len;
 memcpy(acx->mac_table, mc_list, mc_list_len * ETH_ALEN);

 ret = wl1271_cmd_configure(wl, DOT11_GROUP_ADDRESS_TBL,
       acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("failed to set group addr table: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
