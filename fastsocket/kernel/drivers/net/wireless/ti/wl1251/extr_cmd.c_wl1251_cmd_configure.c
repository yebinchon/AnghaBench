
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl1251 {int dummy; } ;
struct acx_header {size_t len; int id; } ;


 int CMD_CONFIGURE ;
 int DEBUG_CMD ;
 int wl1251_cmd_send (struct wl1251*,int ,struct acx_header*,size_t) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*) ;

int wl1251_cmd_configure(struct wl1251 *wl, u16 id, void *buf, size_t len)
{
 struct acx_header *acx = buf;
 int ret;

 wl1251_debug(DEBUG_CMD, "cmd configure");

 acx->id = id;


 acx->len = len - sizeof(*acx);

 ret = wl1251_cmd_send(wl, CMD_CONFIGURE, acx, len);
 if (ret < 0) {
  wl1251_warning("CONFIGURE command NOK");
  return ret;
 }

 return 0;
}
