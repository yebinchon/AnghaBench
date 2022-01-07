
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int * mac_addr; } ;
struct acx_dot11_station_id {int * mac; } ;


 int DEBUG_ACX ;
 int DOT11_STATION_ID ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int kfree (struct acx_dot11_station_id*) ;
 struct acx_dot11_station_id* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_dot11_station_id*,int) ;
 int wl1251_debug (int ,char*) ;

int wl1251_acx_station_id(struct wl1251 *wl)
{
 struct acx_dot11_station_id *mac;
 int ret, i;

 wl1251_debug(DEBUG_ACX, "acx dot11_station_id");

 mac = kzalloc(sizeof(*mac), GFP_KERNEL);
 if (!mac) {
  ret = -ENOMEM;
  goto out;
 }

 for (i = 0; i < ETH_ALEN; i++)
  mac->mac[i] = wl->mac_addr[ETH_ALEN - 1 - i];

 ret = wl1251_cmd_configure(wl, DOT11_STATION_ID, mac, sizeof(*mac));
 if (ret < 0)
  goto out;

out:
 kfree(mac);
 return ret;
}
