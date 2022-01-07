
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct wl1251 {int dummy; } ;
struct acx_wake_up_condition {void* listen_interval; void* wake_up_event; } ;


 int ACX_WAKE_UP_CONDITIONS ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_wake_up_condition*) ;
 struct acx_wake_up_condition* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_wake_up_condition*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_wake_up_conditions(struct wl1251 *wl, u8 wake_up_event,
      u8 listen_interval)
{
 struct acx_wake_up_condition *wake_up;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx wake up conditions");

 wake_up = kzalloc(sizeof(*wake_up), GFP_KERNEL);
 if (!wake_up) {
  ret = -ENOMEM;
  goto out;
 }

 wake_up->wake_up_event = wake_up_event;
 wake_up->listen_interval = listen_interval;

 ret = wl1251_cmd_configure(wl, ACX_WAKE_UP_CONDITIONS,
       wake_up, sizeof(*wake_up));
 if (ret < 0) {
  wl1251_warning("could not set wake up conditions: %d", ret);
  goto out;
 }

out:
 kfree(wake_up);
 return ret;
}
