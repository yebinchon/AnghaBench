
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_dot11_grp_addr_tbl {int mac_table; scalar_t__ num_groups; scalar_t__ enabled; } ;


 int ADDRESS_GROUP_MAX_LEN ;
 int DEBUG_ACX ;
 int DOT11_GROUP_ADDRESS_TBL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_dot11_grp_addr_tbl*) ;
 struct acx_dot11_grp_addr_tbl* kzalloc (int,int ) ;
 int memset (int ,int ,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_dot11_grp_addr_tbl*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_group_address_tbl(struct wl1251 *wl)
{
 struct acx_dot11_grp_addr_tbl *acx;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx group address tbl");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }


 acx->enabled = 0;
 acx->num_groups = 0;
 memset(acx->mac_table, 0, ADDRESS_GROUP_MAX_LEN);

 ret = wl1251_cmd_configure(wl, DOT11_GROUP_ADDRESS_TBL,
       acx, sizeof(*acx));
 if (ret < 0) {
  wl1251_warning("failed to set group addr table: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
