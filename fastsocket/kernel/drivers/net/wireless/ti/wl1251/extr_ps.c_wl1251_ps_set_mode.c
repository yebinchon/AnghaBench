
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int station_mode; int listen_int; } ;
typedef enum wl1251_station_mode { ____Placeholder_wl1251_station_mode } wl1251_station_mode ;


 int CHIP_ACTIVE_MODE ;
 int CHIP_POWER_SAVE_MODE ;
 int CMD_DISCONNECT ;
 int DEBUG_PSM ;



 int WAKE_UP_EVENT_DTIM_BITMAP ;
 int WL1251_ACX_BET_DISABLE ;
 int WL1251_ACX_BET_ENABLE ;
 int WL1251_DEFAULT_BET_CONSECUTIVE ;
 int WL1251_PSM_CAM ;
 int WL1251_PSM_ELP ;
 int wl1251_acx_beacon_filter_opt (struct wl1251*,int) ;
 int wl1251_acx_bet_enable (struct wl1251*,int ,int ) ;
 int wl1251_acx_sleep_auth (struct wl1251*,int ) ;
 int wl1251_acx_wake_up_conditions (struct wl1251*,int ,int ) ;
 int wl1251_cmd_ps_mode (struct wl1251*,int ) ;
 int wl1251_cmd_template_set (struct wl1251*,int ,int *,int ) ;
 int wl1251_debug (int ,char*) ;

int wl1251_ps_set_mode(struct wl1251 *wl, enum wl1251_station_mode mode)
{
 int ret;

 switch (mode) {
 case 128:
  wl1251_debug(DEBUG_PSM, "entering psm");


  ret = wl1251_acx_beacon_filter_opt(wl, 1);
  if (ret < 0)
   return ret;

  ret = wl1251_acx_wake_up_conditions(wl,
          WAKE_UP_EVENT_DTIM_BITMAP,
          wl->listen_int);
  if (ret < 0)
   return ret;

  ret = wl1251_acx_bet_enable(wl, WL1251_ACX_BET_ENABLE,
         WL1251_DEFAULT_BET_CONSECUTIVE);
  if (ret < 0)
   return ret;

  ret = wl1251_cmd_ps_mode(wl, CHIP_POWER_SAVE_MODE);
  if (ret < 0)
   return ret;

  ret = wl1251_acx_sleep_auth(wl, WL1251_PSM_ELP);
  if (ret < 0)
   return ret;
  break;
 case 129:
  wl1251_debug(DEBUG_PSM, "entering idle");

  ret = wl1251_acx_sleep_auth(wl, WL1251_PSM_ELP);
  if (ret < 0)
   return ret;

  ret = wl1251_cmd_template_set(wl, CMD_DISCONNECT, ((void*)0), 0);
  if (ret < 0)
   return ret;
  break;
 case 130:
 default:
  wl1251_debug(DEBUG_PSM, "leaving psm");

  ret = wl1251_acx_sleep_auth(wl, WL1251_PSM_CAM);
  if (ret < 0)
   return ret;


  ret = wl1251_acx_bet_enable(wl, WL1251_ACX_BET_DISABLE,
         WL1251_DEFAULT_BET_CONSECUTIVE);
  if (ret < 0)
   return ret;


  ret = wl1251_acx_beacon_filter_opt(wl, 0);
  if (ret < 0)
   return ret;

  ret = wl1251_acx_wake_up_conditions(wl,
          WAKE_UP_EVENT_DTIM_BITMAP,
          wl->listen_int);
  if (ret < 0)
   return ret;

  ret = wl1251_cmd_ps_mode(wl, CHIP_ACTIVE_MODE);
  if (ret < 0)
   return ret;

  break;
 }
 wl->station_mode = mode;

 return ret;
}
