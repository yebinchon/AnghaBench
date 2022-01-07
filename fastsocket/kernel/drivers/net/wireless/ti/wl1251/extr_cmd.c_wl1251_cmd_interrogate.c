
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wl1251 {int cmd_box_addr; } ;
struct TYPE_2__ {scalar_t__ status; } ;
struct acx_header {size_t len; TYPE_1__ cmd; int id; } ;


 int CMD_INTERROGATE ;
 scalar_t__ CMD_STATUS_SUCCESS ;
 int DEBUG_CMD ;
 int wl1251_cmd_send (struct wl1251*,int ,struct acx_header*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_error (char*,...) ;
 int wl1251_mem_read (struct wl1251*,int ,void*,size_t) ;

int wl1251_cmd_interrogate(struct wl1251 *wl, u16 id, void *buf, size_t len)
{
 struct acx_header *acx = buf;
 int ret;

 wl1251_debug(DEBUG_CMD, "cmd interrogate");

 acx->id = id;


 acx->len = len - sizeof(*acx);

 ret = wl1251_cmd_send(wl, CMD_INTERROGATE, acx, sizeof(*acx));
 if (ret < 0) {
  wl1251_error("INTERROGATE command failed");
  goto out;
 }


 wl1251_mem_read(wl, wl->cmd_box_addr, buf, len);

 acx = buf;
 if (acx->cmd.status != CMD_STATUS_SUCCESS)
  wl1251_error("INTERROGATE command error: %d",
        acx->cmd.status);

out:
 return ret;
}
