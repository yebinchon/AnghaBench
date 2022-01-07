
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASUS_SET_DEVICE_ATTR (int ,int,int *,int *) ;
 int bluetooth ;
 scalar_t__ bt_switch_handle ;
 int display ;
 scalar_t__ display_get_handle ;
 scalar_t__ display_set_handle ;
 int gps ;
 scalar_t__ gps_off_handle ;
 scalar_t__ gps_on_handle ;
 scalar_t__ gps_status_handle ;
 int infos ;
 int ledd ;
 scalar_t__ ledd_set_handle ;
 int ls_level ;
 scalar_t__ ls_level_handle ;
 int ls_switch ;
 scalar_t__ ls_switch_handle ;
 int * show_bluetooth ;
 int * show_disp ;
 int * show_gps ;
 int * show_infos ;
 int * show_ledd ;
 int * show_lslvl ;
 int * show_lssw ;
 int * show_wlan ;
 int * store_bluetooth ;
 int * store_disp ;
 int * store_gps ;
 int * store_ledd ;
 int * store_lslvl ;
 int * store_lssw ;
 int * store_wlan ;
 scalar_t__ wl_switch_handle ;
 int wlan ;

__attribute__((used)) static void asus_hotk_add_fs(void)
{
 ASUS_SET_DEVICE_ATTR(infos, 0444, show_infos, ((void*)0));

 if (wl_switch_handle)
  ASUS_SET_DEVICE_ATTR(wlan, 0644, show_wlan, store_wlan);

 if (bt_switch_handle)
  ASUS_SET_DEVICE_ATTR(bluetooth, 0644,
         show_bluetooth, store_bluetooth);

 if (display_set_handle && display_get_handle)
  ASUS_SET_DEVICE_ATTR(display, 0644, show_disp, store_disp);
 else if (display_set_handle)
  ASUS_SET_DEVICE_ATTR(display, 0200, ((void*)0), store_disp);

 if (ledd_set_handle)
  ASUS_SET_DEVICE_ATTR(ledd, 0644, show_ledd, store_ledd);

 if (ls_switch_handle && ls_level_handle) {
  ASUS_SET_DEVICE_ATTR(ls_level, 0644, show_lslvl, store_lslvl);
  ASUS_SET_DEVICE_ATTR(ls_switch, 0644, show_lssw, store_lssw);
 }

 if (gps_status_handle && gps_on_handle && gps_off_handle)
  ASUS_SET_DEVICE_ATTR(gps, 0644, show_gps, store_gps);
}
