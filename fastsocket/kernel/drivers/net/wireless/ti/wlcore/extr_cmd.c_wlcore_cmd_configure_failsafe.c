
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct wl1271 {int dummy; } ;
struct acx_header {void* len; void* id; } ;


 int CMD_CONFIGURE ;
 int DEBUG_CMD ;
 void* cpu_to_le16 (size_t) ;
 int wl1271_debug (int ,char*,size_t) ;
 int wl1271_warning (char*) ;
 int wlcore_cmd_send_failsafe (struct wl1271*,int ,struct acx_header*,size_t,int ,unsigned long) ;

int wlcore_cmd_configure_failsafe(struct wl1271 *wl, u16 id, void *buf,
      size_t len, unsigned long valid_rets)
{
 struct acx_header *acx = buf;
 int ret;

 wl1271_debug(DEBUG_CMD, "cmd configure (%d)", id);

 acx->id = cpu_to_le16(id);


 acx->len = cpu_to_le16(len - sizeof(*acx));

 ret = wlcore_cmd_send_failsafe(wl, CMD_CONFIGURE, acx, len, 0,
           valid_rets);
 if (ret < 0) {
  wl1271_warning("CONFIGURE command NOK");
  return ret;
 }

 return ret;
}
