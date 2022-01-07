
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lbtf_private {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct cmd_ds_set_bssid {int activate; TYPE_1__ hdr; int bssid; } ;
typedef int cmd ;


 int CMD_802_11_SET_BSSID ;
 int ETH_ALEN ;
 int LBTF_DEB_CMD ;
 int cpu_to_le16 (int) ;
 int lbtf_cmd_async (struct lbtf_private*,int ,TYPE_1__*,int) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int memcpy (int ,int const*,int ) ;

void lbtf_set_bssid(struct lbtf_private *priv, bool activate, const u8 *bssid)
{
 struct cmd_ds_set_bssid cmd;
 lbtf_deb_enter(LBTF_DEB_CMD);

 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.activate = activate ? 1 : 0;
 if (activate)
  memcpy(cmd.bssid, bssid, ETH_ALEN);

 lbtf_cmd_async(priv, CMD_802_11_SET_BSSID, &cmd.hdr, sizeof(cmd));
 lbtf_deb_leave(LBTF_DEB_CMD);
}
