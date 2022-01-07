
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl1271 {int dummy; } ;


 unsigned long BIT (int ) ;
 int CMD_STATUS_SUCCESS ;
 int EIO ;
 int MAX_COMMAND_STATUS ;
 int __wlcore_cmd_send (struct wl1271*,int ,void*,size_t,size_t) ;
 int test_bit (int,unsigned long*) ;
 int wl1271_error (char*,int) ;
 int wl12xx_queue_recovery_work (struct wl1271*) ;

int wlcore_cmd_send_failsafe(struct wl1271 *wl, u16 id, void *buf, size_t len,
        size_t res_len, unsigned long valid_rets)
{
 int ret = __wlcore_cmd_send(wl, id, buf, len, res_len);

 if (ret < 0)
  goto fail;


 valid_rets |= BIT(CMD_STATUS_SUCCESS);

 if (ret >= MAX_COMMAND_STATUS ||
     !test_bit(ret, &valid_rets)) {
  wl1271_error("command execute failure %d", ret);
  ret = -EIO;
  goto fail;
 }
 return ret;
fail:
 wl12xx_queue_recovery_work(wl);
 return ret;
}
