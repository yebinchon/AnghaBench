
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int status; } ;
struct TYPE_6__ {TYPE_2__ rem_sta; } ;
struct TYPE_4__ {int flags; } ;
struct il_rx_pkt {TYPE_3__ u; TYPE_1__ hdr; } ;
struct il_rem_sta_cmd {int num_sta; int addr; } ;
struct il_priv {int sta_lock; } ;
struct il_host_cmd {int len; scalar_t__ reply_page; int flags; struct il_rem_sta_cmd* data; int id; } ;
typedef int rm_sta_cmd ;


 int CMD_SYNC ;
 int CMD_WANT_SKB ;
 int C_REM_STA ;
 int D_ASSOC (char*) ;
 int EIO ;
 int ETH_ALEN ;
 int IL_CMD_FAILED_MSK ;
 int IL_ERR (char*,...) ;

 int il_free_pages (struct il_priv*,scalar_t__) ;
 int il_send_cmd (struct il_priv*,struct il_host_cmd*) ;
 int il_sta_ucode_deactivate (struct il_priv*,int) ;
 int memcpy (int *,int const*,int ) ;
 int memset (struct il_rem_sta_cmd*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
il_send_remove_station(struct il_priv *il, const u8 * addr, int sta_id,
         bool temporary)
{
 struct il_rx_pkt *pkt;
 int ret;

 unsigned long flags_spin;
 struct il_rem_sta_cmd rm_sta_cmd;

 struct il_host_cmd cmd = {
  .id = C_REM_STA,
  .len = sizeof(struct il_rem_sta_cmd),
  .flags = CMD_SYNC,
  .data = &rm_sta_cmd,
 };

 memset(&rm_sta_cmd, 0, sizeof(rm_sta_cmd));
 rm_sta_cmd.num_sta = 1;
 memcpy(&rm_sta_cmd.addr, addr, ETH_ALEN);

 cmd.flags |= CMD_WANT_SKB;

 ret = il_send_cmd(il, &cmd);

 if (ret)
  return ret;

 pkt = (struct il_rx_pkt *)cmd.reply_page;
 if (pkt->hdr.flags & IL_CMD_FAILED_MSK) {
  IL_ERR("Bad return from C_REM_STA (0x%08X)\n", pkt->hdr.flags);
  ret = -EIO;
 }

 if (!ret) {
  switch (pkt->u.rem_sta.status) {
  case 128:
   if (!temporary) {
    spin_lock_irqsave(&il->sta_lock, flags_spin);
    il_sta_ucode_deactivate(il, sta_id);
    spin_unlock_irqrestore(&il->sta_lock,
             flags_spin);
   }
   D_ASSOC("C_REM_STA PASSED\n");
   break;
  default:
   ret = -EIO;
   IL_ERR("C_REM_STA failed\n");
   break;
  }
 }
 il_free_pages(il, cmd.reply_page);

 return ret;
}
