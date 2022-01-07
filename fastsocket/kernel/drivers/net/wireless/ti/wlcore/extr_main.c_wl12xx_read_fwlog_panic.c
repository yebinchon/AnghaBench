
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct wl1271_rx_descriptor {int dummy; } ;
struct TYPE_4__ {scalar_t__ mem_blocks; scalar_t__ output; scalar_t__ mode; } ;
struct TYPE_5__ {TYPE_1__ fwlog; } ;
struct wl1271 {int quirks; int fwlog_waitq; TYPE_2__ conf; TYPE_3__* fw_status_2; int fw_status_1; int watchdog_recovery; } ;
typedef int addr ;
typedef int __le32 ;
struct TYPE_6__ {int log_start_addr; } ;


 int GFP_KERNEL ;
 scalar_t__ WL12XX_FWLOG_CONTINUOUS ;
 scalar_t__ WL12XX_FWLOG_OUTPUT_DBG_PINS ;
 scalar_t__ WL12XX_HW_BLOCK_SIZE ;
 scalar_t__ WLCORE_FW_LOG_END ;
 int WLCORE_QUIRK_FWLOG_NOT_IMPLEMENTED ;
 int kfree (int *) ;
 int * kmalloc (scalar_t__,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ le32_to_cpup (int *) ;
 int memset (int *,int ,scalar_t__) ;
 int wake_up_interruptible (int *) ;
 int wl1271_info (char*) ;
 scalar_t__ wl1271_ps_elp_wakeup (struct wl1271*) ;
 int wl12xx_cmd_stop_fwlog (struct wl1271*) ;
 int wl12xx_copy_fwlog (struct wl1271*,int *,scalar_t__) ;
 int wlcore_fw_status (struct wl1271*,int ,TYPE_3__*) ;
 int wlcore_read_hwaddr (struct wl1271*,scalar_t__,int *,scalar_t__,int) ;

__attribute__((used)) static void wl12xx_read_fwlog_panic(struct wl1271 *wl)
{
 u32 addr;
 u32 offset;
 u32 end_of_log;
 u8 *block;
 int ret;

 if ((wl->quirks & WLCORE_QUIRK_FWLOG_NOT_IMPLEMENTED) ||
     (wl->conf.fwlog.mem_blocks == 0))
  return;

 wl1271_info("Reading FW panic log");

 block = kmalloc(WL12XX_HW_BLOCK_SIZE, GFP_KERNEL);
 if (!block)
  return;






 if (wl1271_ps_elp_wakeup(wl))
  goto out;
 if (!wl->watchdog_recovery &&
     wl->conf.fwlog.output != WL12XX_FWLOG_OUTPUT_DBG_PINS)
  wl12xx_cmd_stop_fwlog(wl);


 ret = wlcore_fw_status(wl, wl->fw_status_1, wl->fw_status_2);
 if (ret < 0)
  goto out;

 addr = le32_to_cpu(wl->fw_status_2->log_start_addr);
 if (!addr)
  goto out;

 if (wl->conf.fwlog.mode == WL12XX_FWLOG_CONTINUOUS) {
  offset = sizeof(addr) + sizeof(struct wl1271_rx_descriptor);
  end_of_log = WLCORE_FW_LOG_END;
 } else {
  offset = sizeof(addr);
  end_of_log = addr;
 }


 do {
  memset(block, 0, WL12XX_HW_BLOCK_SIZE);
  ret = wlcore_read_hwaddr(wl, addr, block, WL12XX_HW_BLOCK_SIZE,
      0);
  if (ret < 0)
   goto out;







  addr = le32_to_cpup((__le32 *)block);
  if (!wl12xx_copy_fwlog(wl, block + offset,
           WL12XX_HW_BLOCK_SIZE - offset))
   break;
 } while (addr && (addr != end_of_log));

 wake_up_interruptible(&wl->fwlog_waitq);

out:
 kfree(block);
}
