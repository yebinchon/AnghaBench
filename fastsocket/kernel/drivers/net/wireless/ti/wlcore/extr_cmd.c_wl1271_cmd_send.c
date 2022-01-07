
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl1271 {int dummy; } ;


 int wlcore_cmd_send_failsafe (struct wl1271*,int ,void*,size_t,size_t,int ) ;

int wl1271_cmd_send(struct wl1271 *wl, u16 id, void *buf, size_t len,
      size_t res_len)
{
 int ret = wlcore_cmd_send_failsafe(wl, id, buf, len, res_len, 0);

 if (ret < 0)
  return ret;
 return 0;
}
