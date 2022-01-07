
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ status; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_priv {int status; } ;
struct il_host_cmd {scalar_t__ reply_page; int flags; int id; } ;


 scalar_t__ CAN_ABORT_STATUS ;
 int CMD_WANT_SKB ;
 int C_SCAN_ABORT ;
 int D_SCAN (char*,scalar_t__) ;
 int EIO ;
 int S_EXIT_PENDING ;
 int S_FW_ERROR ;
 int S_GEO_CONFIGURED ;
 int S_READY ;
 int S_SCAN_HW ;
 int il_free_pages (struct il_priv*,scalar_t__) ;
 int il_send_cmd_sync (struct il_priv*,struct il_host_cmd*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
il_send_scan_abort(struct il_priv *il)
{
 int ret;
 struct il_rx_pkt *pkt;
 struct il_host_cmd cmd = {
  .id = C_SCAN_ABORT,
  .flags = CMD_WANT_SKB,
 };




 if (!test_bit(S_READY, &il->status) ||
     !test_bit(S_GEO_CONFIGURED, &il->status) ||
     !test_bit(S_SCAN_HW, &il->status) ||
     test_bit(S_FW_ERROR, &il->status) ||
     test_bit(S_EXIT_PENDING, &il->status))
  return -EIO;

 ret = il_send_cmd_sync(il, &cmd);
 if (ret)
  return ret;

 pkt = (struct il_rx_pkt *)cmd.reply_page;
 if (pkt->u.status != CAN_ABORT_STATUS) {






  D_SCAN("SCAN_ABORT ret %d.\n", pkt->u.status);
  ret = -EIO;
 }

 il_free_pages(il, cmd.reply_page);
 return ret;
}
