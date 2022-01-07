
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct il_rx_pkt {TYPE_1__ hdr; } ;
struct il_priv {int dummy; } ;
struct TYPE_4__ {int cmd; } ;
struct il_device_cmd {TYPE_2__ hdr; } ;




 int D_HC (char*,int ,int) ;
 int D_HC_DUMP (char*,int ,int) ;
 int IL_CMD_FAILED_MSK ;
 int IL_ERR (char*,int ,int) ;
 int il_get_cmd_string (int) ;

__attribute__((used)) static void
il_generic_cmd_callback(struct il_priv *il, struct il_device_cmd *cmd,
   struct il_rx_pkt *pkt)
{
 if (pkt->hdr.flags & IL_CMD_FAILED_MSK) {
  IL_ERR("Bad return from %s (0x%08X)\n",
         il_get_cmd_string(cmd->hdr.cmd), pkt->hdr.flags);
  return;
 }
}
