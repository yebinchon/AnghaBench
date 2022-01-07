
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_acx_config_hangover {int window_size; int increase_time; int quiet_time; int decrease_delta; int increase_delta; int min_period; int max_period; int early_termination_mode; int dynamic_mode; int hangover_period; int recover_time; } ;
struct conf_hangover_settings {int increase_time; int quiet_time; int decrease_delta; int increase_delta; int min_period; int max_period; int early_termination_mode; int dynamic_mode; int hangover_period; int recover_time; } ;
struct TYPE_2__ {struct conf_hangover_settings hangover; } ;
struct wl1271 {TYPE_1__ conf; } ;


 int ACX_CONFIG_HANGOVER ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int ) ;
 int kfree (struct wl12xx_acx_config_hangover*) ;
 struct wl12xx_acx_config_hangover* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl12xx_acx_config_hangover*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl12xx_acx_config_hangover(struct wl1271 *wl)
{
 struct wl12xx_acx_config_hangover *acx;
 struct conf_hangover_settings *conf = &wl->conf.hangover;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx config hangover");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->recover_time = cpu_to_le32(conf->recover_time);
 acx->hangover_period = conf->hangover_period;
 acx->dynamic_mode = conf->dynamic_mode;
 acx->early_termination_mode = conf->early_termination_mode;
 acx->max_period = conf->max_period;
 acx->min_period = conf->min_period;
 acx->increase_delta = conf->increase_delta;
 acx->decrease_delta = conf->decrease_delta;
 acx->quiet_time = conf->quiet_time;
 acx->increase_time = conf->increase_time;
 acx->window_size = acx->window_size;

 ret = wl1271_cmd_configure(wl, ACX_CONFIG_HANGOVER, acx,
       sizeof(*acx));

 if (ret < 0) {
  wl1271_warning("acx config hangover failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;

}
