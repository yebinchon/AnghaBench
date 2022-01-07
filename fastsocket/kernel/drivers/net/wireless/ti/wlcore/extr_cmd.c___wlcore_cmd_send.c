
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct wl1271_cmd_header {scalar_t__ status; int id; } ;
struct wl1271 {scalar_t__ state; int cmd_box_addr; TYPE_1__* ops; int flags; } ;
struct TYPE_2__ {int (* trigger_cmd ) (struct wl1271*,int ,void*,size_t) ;} ;


 int EIO ;
 int ETIMEDOUT ;
 int REG_INTERRUPT_ACK ;
 int REG_INTERRUPT_NO_CLEAR ;
 scalar_t__ WARN_ON (int) ;
 int WL1271_ACX_INTR_CMD_COMPLETE ;
 scalar_t__ WL1271_CMD_FAST_POLL_COUNT ;
 int WL1271_COMMAND_TIMEOUT ;
 int WL1271_FLAG_IN_ELP ;
 scalar_t__ WLCORE_STATE_RESTARTING ;
 int cpu_to_le16 (scalar_t__) ;
 unsigned long jiffies ;
 scalar_t__ le16_to_cpu (scalar_t__) ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 int stub1 (struct wl1271*,int ,void*,size_t) ;
 int test_bit (int ,int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;
 int unlikely (int) ;
 int wl1271_error (char*) ;
 int wlcore_read (struct wl1271*,int ,struct wl1271_cmd_header*,size_t,int) ;
 int wlcore_read_reg (struct wl1271*,int ,int*) ;
 int wlcore_write (struct wl1271*,int ,void*,size_t,int) ;
 int wlcore_write_reg (struct wl1271*,int ,int) ;

__attribute__((used)) static int __wlcore_cmd_send(struct wl1271 *wl, u16 id, void *buf,
        size_t len, size_t res_len)
{
 struct wl1271_cmd_header *cmd;
 unsigned long timeout;
 u32 intr;
 int ret;
 u16 status;
 u16 poll_count = 0;

 if (WARN_ON(unlikely(wl->state == WLCORE_STATE_RESTARTING)))
  return -EIO;

 cmd = buf;
 cmd->id = cpu_to_le16(id);
 cmd->status = 0;

 WARN_ON(len % 4 != 0);
 WARN_ON(test_bit(WL1271_FLAG_IN_ELP, &wl->flags));

 ret = wlcore_write(wl, wl->cmd_box_addr, buf, len, 0);
 if (ret < 0)
  return ret;





 ret = wl->ops->trigger_cmd(wl, wl->cmd_box_addr, buf, len);
 if (ret < 0)
  return ret;

 timeout = jiffies + msecs_to_jiffies(WL1271_COMMAND_TIMEOUT);

 ret = wlcore_read_reg(wl, REG_INTERRUPT_NO_CLEAR, &intr);
 if (ret < 0)
  return ret;

 while (!(intr & WL1271_ACX_INTR_CMD_COMPLETE)) {
  if (time_after(jiffies, timeout)) {
   wl1271_error("command complete timeout");
   return -ETIMEDOUT;
  }

  poll_count++;
  if (poll_count < WL1271_CMD_FAST_POLL_COUNT)
   udelay(10);
  else
   msleep(1);

  ret = wlcore_read_reg(wl, REG_INTERRUPT_NO_CLEAR, &intr);
  if (ret < 0)
   return ret;
 }


 if (res_len == 0)
  res_len = sizeof(struct wl1271_cmd_header);

 ret = wlcore_read(wl, wl->cmd_box_addr, cmd, res_len, 0);
 if (ret < 0)
  return ret;

 status = le16_to_cpu(cmd->status);

 ret = wlcore_write_reg(wl, REG_INTERRUPT_ACK,
          WL1271_ACX_INTR_CMD_COMPLETE);
 if (ret < 0)
  return ret;

 return status;
}
