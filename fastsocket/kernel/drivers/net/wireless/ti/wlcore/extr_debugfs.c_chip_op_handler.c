
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dummy; } ;


 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;
 int wl1271_warning (char*) ;

__attribute__((used)) static void chip_op_handler(struct wl1271 *wl, unsigned long value,
       void *arg)
{
 int ret;
 int (*chip_op) (struct wl1271 *wl);

 if (!arg) {
  wl1271_warning("debugfs chip_op_handler with no callback");
  return;
 }

 ret = wl1271_ps_elp_wakeup(wl);
 if (ret < 0)
  return;

 chip_op = arg;
 chip_op(wl);

 wl1271_ps_elp_sleep(wl);
}
